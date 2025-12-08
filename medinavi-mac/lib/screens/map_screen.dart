import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/medical_service.dart';
import '../services/google_places_service.dart';

class MapScreen extends StatefulWidget {
  final MedicalService service;
  final Position currentPosition;

  const MapScreen({
    super.key,
    required this.service,
    required this.currentPosition,
  });

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final MapController _mapController = MapController();
  final GooglePlacesService _placesService = GooglePlacesService();
  bool _showDirections = false;
  Map<String, dynamic>? _directionsData;
  List<LatLng> _routePoints = [];
  bool _isLoadingDirections = false;
  String _selectedTravelMode = 'driving';

  @override
  void initState() {
    super.initState();
    // Center map on selected service location
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _centerOnService();
    });
  }

  void _centerOnService() {
    _mapController.move(
      LatLng(widget.service.latitude, widget.service.longitude),
      14.0,
    );
  }

  void _centerMapOnRoute() {
    final bounds = LatLngBounds(
      LatLng(widget.currentPosition.latitude, widget.currentPosition.longitude),
      LatLng(widget.service.latitude, widget.service.longitude),
    );

    _mapController.fitCamera(
      CameraFit.bounds(
        bounds: bounds,
        padding: const EdgeInsets.all(50),
      ),
    );
  }

  void _zoomIn() {
    final currentZoom = _mapController.camera.zoom;
    _mapController.move(_mapController.camera.center, currentZoom + 1);
  }

  void _zoomOut() {
    final currentZoom = _mapController.camera.zoom;
    _mapController.move(_mapController.camera.center, currentZoom - 1);
  }

  void _goToUserLocation() {
    _mapController.move(
      LatLng(widget.currentPosition.latitude, widget.currentPosition.longitude),
      14.0,
    );
  }

  Future<void> _getDirections() async {
    setState(() {
      _isLoadingDirections = true;
      _showDirections = true;
    });

    final directions = await _placesService.getDirections(
      startLat: widget.currentPosition.latitude,
      startLng: widget.currentPosition.longitude,
      endLat: widget.service.latitude,
      endLng: widget.service.longitude,
      mode: _selectedTravelMode,
    );

    if (directions != null && directions['routes'] != null && directions['routes'].isNotEmpty) {
      setState(() {
        _directionsData = directions;
        _routePoints = _decodePolyline(
          directions['routes'][0]['overview_polyline']['points']
        );
      });

      _centerMapOnRoute();
    } else {
      if (mounted) {
        String errorMessage = 'Unable to get directions';

        // Check if it's a transit or bicycling specific error
        if (_selectedTravelMode == 'transit') {
          errorMessage = 'Transit directions not available for this route';
        } else if (_selectedTravelMode == 'bicycling') {
          errorMessage = 'Bicycling directions not available for this area. Try walking or driving mode.';
        } else if (directions != null && directions['status'] != null) {
          // Show specific error based on API status
          switch (directions['status']) {
            case 'ZERO_RESULTS':
              errorMessage = _selectedTravelMode == 'bicycling'
                  ? 'No cycling routes available. Try walking or driving mode.'
                  : 'No route found for $_selectedTravelMode mode';
              break;
            case 'NOT_FOUND':
              errorMessage = 'Location not found';
              break;
            default:
              errorMessage = 'Unable to get directions: ${directions['status']}';
          }
        }

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(errorMessage),
            backgroundColor: Colors.orange,
            duration: const Duration(seconds: 3),
          ),
        );
      }
    }

    setState(() => _isLoadingDirections = false);
  }

  List<LatLng> _decodePolyline(String encoded) {
    List<LatLng> points = [];
    int index = 0;
    int len = encoded.length;
    int lat = 0;
    int lng = 0;

    while (index < len) {
      int b;
      int shift = 0;
      int result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      int dlat = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      lat += dlat;

      shift = 0;
      result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      int dlng = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      lng += dlng;

      points.add(LatLng(lat / 1E5, lng / 1E5));
    }

    return points;
  }

  Future<void> _openInGoogleMaps() async {
    final url = Uri.parse(
      'https://www.google.com/maps/dir/?api=1&origin=${widget.currentPosition.latitude},${widget.currentPosition.longitude}&destination=${widget.service.latitude},${widget.service.longitude}&travelmode=$_selectedTravelMode'
    );
    
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Unable to open Google Maps'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Map
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: LatLng(
                widget.currentPosition.latitude,
                widget.currentPosition.longitude,
              ),
              initialZoom: 11.0,
              minZoom: 3.0,
              maxZoom: 18.0,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://{s}.basemaps.cartocdn.com/rastertiles/voyager/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.medical_services',
                maxZoom: 19,
                subdomains: const ['a', 'b', 'c', 'd'],
              ),
              // Route polyline
              if (_routePoints.isNotEmpty)
                PolylineLayer(
                  polylines: [
                    Polyline(
                      points: _routePoints,
                      strokeWidth: 4,
                      color: const Color(0xFF2E7D32),
                    ),
                  ],
                ),
              // Markers
              MarkerLayer(
                markers: [
                  // Current location marker
                  Marker(
                    point: LatLng(
                      widget.currentPosition.latitude,
                      widget.currentPosition.longitude,
                    ),
                    width: 40,
                    height: 40,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 6,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Destination marker
                  Marker(
                    point: LatLng(
                      widget.service.latitude,
                      widget.service.longitude,
                    ),
                    width: 50,
                    height: 50,
                    child: const Icon(
                      Icons.location_pin,
                      size: 50,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // Top bar with back button
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    _buildActionButton(
                      icon: Icons.arrow_back,
                      onTap: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Right side controls (zoom and location)
          Positioned(
            right: 16,
            top: 100,
            child: SafeArea(
              child: Column(
                children: [
                  _buildActionButton(
                    icon: Icons.add,
                    onTap: _zoomIn,
                  ),
                  const SizedBox(height: 8),
                  _buildActionButton(
                    icon: Icons.remove,
                    onTap: _zoomOut,
                  ),
                  const SizedBox(height: 16),
                  _buildActionButton(
                    icon: Icons.my_location,
                    onTap: _goToUserLocation,
                  ),
                  const SizedBox(height: 8),
                  _buildActionButton(
                    icon: Icons.location_searching,
                    onTap: _centerOnService,
                  ),
                ],
              ),
            ),
          ),

          // Draggable bottom sheet with service details
          DraggableScrollableSheet(
            initialChildSize: _showDirections ? 0.4 : 0.30,
            minChildSize: 0.1,
            maxChildSize: _showDirections ? 0.4 : 0.30,
            snap: true,
            snapSizes: _showDirections ? const [0.1, 0.4] : const [0.1, 0.30],
            builder: (BuildContext context, ScrollController scrollController) {
              return _buildBottomSheet(scrollController);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, size: 24),
        ),
      ),
    );
  }

  Widget _buildBottomSheet(ScrollController scrollController) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: SingleChildScrollView(
          controller: scrollController,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  // Service name and rating
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.service.name,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                if (widget.service.rating > 0) ...[
                                  const Icon(
                                    Icons.star,
                                    size: 18,
                                    color: Colors.amber,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    widget.service.rating.toStringAsFixed(1),
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                ],
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: widget.service.isOpen
                                        ? Colors.green.withOpacity(0.1)
                                        : Colors.red.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    widget.service.isOpen ? 'Open Now' : 'Closed',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: widget.service.isOpen
                                          ? Colors.green[700]
                                          : Colors.red[700],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // Address
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 20,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          widget.service.address,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 12),
                  
                  // Distance
                  Row(
                    children: [
                      const Icon(
                        Icons.directions_car,
                        size: 20,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${widget.service.distance.toStringAsFixed(1)} km away',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                      ),
                      if (_directionsData != null) ...[
                        const SizedBox(width: 16),
                        Text(
                          _directionsData!['routes'][0]['legs'][0]['duration']['text'],
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ],
                  ),
                  
                  const SizedBox(height: 20),
                  
                  // Travel mode selector (if directions shown)
                  if (_showDirections) _buildTravelModeSelector(),
                  
                  if (_showDirections) const SizedBox(height: 16),
                  
                  // Action buttons
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: _isLoadingDirections
                              ? null
                              : (_showDirections ? _openInGoogleMaps : _getDirections),
                          icon: _isLoadingDirections
                              ? const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: Colors.white,
                                  ),
                                )
                              : Icon(_showDirections ? Icons.navigation : Icons.directions),
                          label: Text(
                            _showDirections ? 'Open in Google Maps' : 'Get Directions',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF2E7D32),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 0,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      ElevatedButton(
                        onPressed: () async {
                          final phoneUrl = Uri.parse('tel:${widget.service.phone}');
                          if (await canLaunchUrl(phoneUrl)) {
                            await launchUrl(phoneUrl);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.all(16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 0,
                        ),
                        child: const Icon(Icons.phone),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTravelModeSelector() {
    final modes = [
      {'mode': 'driving', 'icon': Icons.directions_car, 'label': 'Drive'},
      {'mode': 'walking', 'icon': Icons.directions_walk, 'label': 'Walk'},
      {'mode': 'bicycling', 'icon': Icons.directions_bike, 'label': 'Bike'},
      {'mode': 'transit', 'icon': Icons.directions_transit, 'label': 'Transit'},
    ];

    return Row(
      children: modes.map((mode) {
        final isSelected = _selectedTravelMode == mode['mode'];
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _selectedTravelMode = mode['mode'] as String;
              });
              _getDirections();
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: isSelected
                    ? const Color(0xFF2E7D32).withOpacity(0.1)
                    : Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: isSelected
                      ? const Color(0xFF2E7D32)
                      : Colors.transparent,
                  width: 2,
                ),
              ),
              child: Column(
                children: [
                  Icon(
                    mode['icon'] as IconData,
                    color: isSelected
                        ? const Color(0xFF2E7D32)
                        : Colors.grey[600],
                    size: 24,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    mode['label'] as String,
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                      color: isSelected
                          ? const Color(0xFF2E7D32)
                          : Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}