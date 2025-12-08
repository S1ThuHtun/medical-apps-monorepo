import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:math';
import '../data/medical_services_data.dart';
import '../data/prefecture_data.dart';
import '../models/medical_service.dart';
import '../services/google_places_service.dart';
import 'map_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GooglePlacesService _placesService = GooglePlacesService();
  List<MedicalService> _nearbyServices = [];
  bool _isLoading = false;
  Position? _currentPosition;
  String _selectedCategory = 'General Services';
  String? _selectedService;
  String? _selectedPrefecture;
  String? _selectedCity;
  String? _selectedWard;
  LocationData? _selectedLocation;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    setState(() => _isLoading = true);
    
    final position = await _placesService.getCurrentLocation();
    
    if (position != null) {
      setState(() {
        _currentPosition = position;
      });
      
      // Auto-search for nearby hospitals on app start
      _searchNearbyServices('Emergency Care');
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Unable to get location. Please enable location services.'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
    
    setState(() => _isLoading = false);
  }

  Future<void> _searchNearbyServices(String serviceName) async {
    double? searchLat;
    double? searchLng;

    // Determine search location - use most specific location selected
    if (_selectedLocation != null) {
      searchLat = _selectedLocation!.lat;
      searchLng = _selectedLocation!.lng;
    } else if (_currentPosition != null) {
      searchLat = _currentPosition!.latitude;
      searchLng = _currentPosition!.longitude;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select a location or enable location services.'),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }

    setState(() {
      _isLoading = true;
      _selectedService = serviceName;
    });

    final placeType = serviceToPlacesType[serviceName] ?? 'hospital';

    final services = await _placesService.searchNearbyServices(
      latitude: searchLat,
      longitude: searchLng,
      serviceType: placeType,
      radiusInMeters: 5000,
    );

    // Recalculate distances from current position if a different location was selected for search
    List<MedicalService> updatedServices = services;
    if (_selectedLocation != null && _currentPosition != null) {
      updatedServices = services.map((service) {
        final distanceFromCurrentLocation = _calculateDistance(
          _currentPosition!.latitude,
          _currentPosition!.longitude,
          service.latitude,
          service.longitude,
        );
        return MedicalService(
          id: service.id,
          name: service.name,
          category: service.category,
          latitude: service.latitude,
          longitude: service.longitude,
          address: service.address,
          distance: distanceFromCurrentLocation,
          phone: service.phone,
          rating: service.rating,
          isOpen: service.isOpen,
          imageUrl: service.imageUrl,
        );
      }).toList();
    }

    // Sort by distance
    updatedServices.sort((a, b) => a.distance.compareTo(b.distance));

    setState(() {
      _nearbyServices = updatedServices;
      _isLoading = false;
    });
  }

  // Calculate distance between two coordinates (Haversine formula)
  double _calculateDistance(double lat1, double lon1, double lat2, double lon2) {
    const double earthRadius = 6371; // km

    final dLat = _toRadians(lat2 - lat1);
    final dLon = _toRadians(lon2 - lon1);

    final a = sin(dLat / 2) * sin(dLat / 2) +
        cos(_toRadians(lat1)) * cos(_toRadians(lat2)) *
        sin(dLon / 2) * sin(dLon / 2);

    final c = 2 * atan2(sqrt(a), sqrt(1 - a));

    return earthRadius * c;
  }

  double _toRadians(double degree) {
    return degree * pi / 180;
  }

  void _showLocationSelector() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => _LocationSelectorScreen(
          currentLocation: _selectedLocation,
          onLocationSelected: (location, prefecture, city, ward) {
            setState(() {
              _selectedLocation = location;
              _selectedPrefecture = prefecture;
              _selectedCity = city;
              _selectedWard = ward;
              _nearbyServices.clear();
              _selectedService = null;
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        shadowColor: Colors.black.withOpacity(0.05),
        surfaceTintColor: Colors.transparent,
        toolbarHeight: 80,
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFF2E7D32).withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.local_hospital,
                color: Color(0xFF2E7D32),
                size: 28,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Medical Services',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.5,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  GestureDetector(
                    onTap: _showLocationSelector,
                    child: Row(
                      children: [
                        Icon(
                          _selectedPrefecture != null
                              ? Icons.location_city
                              : Icons.location_on,
                          size: 16,
                          color: const Color(0xFF2E7D32),
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            _getLocationDisplayText(),
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFF2E7D32),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_drop_down,
                          size: 20,
                          color: Color(0xFF2E7D32),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _getCurrentLocation,
            color: const Color(0xFF2E7D32),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Column(
        children: [
          _buildCategoryTabs(),
          _buildServiceGrid(),
          if (_nearbyServices.isNotEmpty) _buildResultsHeader(),
          Expanded(child: _buildServicesList()),
        ],
      ),
    );
  }

  Widget _buildCategoryTabs() {
    final categories = medicalServicesData['services'].keys.toList();
    
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          final isSelected = category == _selectedCategory;
          
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedCategory = category;
                _nearbyServices.clear();
                _selectedService = null;
              });
            },
            child: Container(
              margin: const EdgeInsets.only(right: 12),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
                color: isSelected
                    ? const Color(0xFF2E7D32)
                    : Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: isSelected
                      ? const Color(0xFF2E7D32)
                      : Colors.grey[300]!,
                ),
                boxShadow: isSelected
                    ? [
                        BoxShadow(
                          color: const Color(0xFF2E7D32).withOpacity(0.3),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ]
                    : [],
              ),
              child: Center(
                child: Text(
                  category,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black87,
                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildServiceGrid() {
    final services = medicalServicesData['services'][_selectedCategory] as List;

    return SizedBox(
      height: 180,
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.5,
          mainAxisExtent: 120,
        ),
        itemCount: services.length,
        itemBuilder: (context, index) {
          final service = services[index];
          final isSelected = service == _selectedService;

          return GestureDetector(
            onTap: () => _searchNearbyServices(service),
            child: Container(
              decoration: BoxDecoration(
                color: isSelected
                    ? const Color(0xFF2E7D32).withOpacity(0.1)
                    : Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isSelected
                      ? const Color(0xFF2E7D32)
                      : Colors.grey[200]!,
                  width: isSelected ? 2 : 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          _getServiceIcon(service),
                          color: isSelected
                              ? const Color(0xFF2E7D32)
                              : Colors.grey[700],
                          size: 22,
                        ),
                        const SizedBox(height: 6),
                        Flexible(
                          child: Text(
                            service,
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: isSelected
                                  ? const Color(0xFF2E7D32)
                                  : Colors.black87,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (isSelected)
                    Positioned(
                      top: 6,
                      right: 6,
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                          color: Color(0xFF2E7D32),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 12,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildResultsHeader() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Found ${_nearbyServices.length} nearby',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Within 5km',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServicesList() {
    if (_isLoading) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: Color(0xFF2E7D32),
            ),
            SizedBox(height: 16),
            Text(
              'Searching nearby services...',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      );
    }

    if (_nearbyServices.isEmpty) {
      return const SizedBox.shrink();
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemCount: _nearbyServices.length,
      itemBuilder: (context, index) {
        final service = _nearbyServices[index];
        return _buildServiceCard(service);
      },
    );
  }

  Widget _buildServiceCard(MedicalService service) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MapScreen(
              service: service,
              currentPosition: _currentPosition!,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFF2E7D32).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.local_hospital,
                  color: Color(0xFF2E7D32),
                  size: 30,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      service.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      service.address,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[600],
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 16,
                          color: Colors.grey[600],
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${service.distance.toStringAsFixed(1)} km away',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(width: 12),
                        if (service.rating > 0) ...[
                          const Icon(
                            Icons.star,
                            size: 16,
                            color: Colors.amber,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            service.rating.toStringAsFixed(1),
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                        const SizedBox(width: 12),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: service.isOpen
                                ? Colors.green.withOpacity(0.1)
                                : Colors.red.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            service.isOpen ? 'Open' : 'Closed',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: service.isOpen
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
              const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconData _getServiceIcon(String service) {
    if (service.contains('Surgery')) return Icons.medical_services;
    if (service.contains('Emergency')) return Icons.emergency;
    if (service.contains('Therapy')) return Icons.self_improvement;
    if (service.contains('Laboratory') || service.contains('Radiology')) {
      return Icons.biotech;
    }
    if (service.contains('Pharmacy')) return Icons.local_pharmacy;
    if (service.contains('Mental') || service.contains('Psychiatry')) {
      return Icons.psychology;
    }
    if (service.contains('Cardiology')) return Icons.favorite;
    if (service.contains('Pediatrics')) return Icons.child_care;
    return Icons.medical_services;
  }

  String _getLocationDisplayText() {
    if (_selectedWard != null) {
      return '$_selectedWard, $_selectedCity';
    } else if (_selectedCity != null) {
      return '$_selectedCity, $_selectedPrefecture';
    } else if (_selectedPrefecture != null) {
      return _selectedPrefecture!;
    } else if (_currentPosition != null) {
      return 'Current Location';
    } else {
      return 'Select Location';
    }
  }
}

// Hierarchical Location Selector Screen
class _LocationSelectorScreen extends StatefulWidget {
  final LocationData? currentLocation;
  final Function(LocationData?, String?, String?, String?) onLocationSelected;

  const _LocationSelectorScreen({
    required this.currentLocation,
    required this.onLocationSelected,
  });

  @override
  State<_LocationSelectorScreen> createState() => _LocationSelectorScreenState();
}

class _LocationSelectorScreenState extends State<_LocationSelectorScreen> {
  String? _selectedPrefecture;
  String? _selectedCity;
  String? _selectedWard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          _selectedCity != null
              ? 'Select Ward'
              : _selectedPrefecture != null
                  ? 'Select City'
                  : 'Select Prefecture',
          style: const TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            if (_selectedCity != null) {
              setState(() {
                _selectedCity = null;
                _selectedWard = null;
              });
            } else if (_selectedPrefecture != null) {
              setState(() {
                _selectedPrefecture = null;
              });
            } else {
              Navigator.pop(context);
            }
          },
        ),
      ),
      body: _selectedCity != null
          ? _buildWardList()
          : _selectedPrefecture != null
              ? _buildCityList()
              : _buildPrefectureList(),
    );
  }

  Widget _buildPrefectureList() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Current Location Option
        _buildLocationTile(
          icon: Icons.my_location,
          title: 'Use Current Location',
          isSelected: widget.currentLocation == null,
          onTap: () {
            widget.onLocationSelected(null, null, null, null);
            Navigator.pop(context);
          },
        ),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.only(left: 8, bottom: 8),
          child: Text(
            'Prefectures',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
        ),
        // Prefecture List
        ...japanesePrefectures.keys.map((prefecture) {
          final prefectureData = japanesePrefectures[prefecture]!;
          final hasChildren = prefectureData.children != null;

          return _buildLocationTile(
            icon: Icons.location_city,
            title: prefecture,
            isSelected: false,
            trailing: hasChildren ? Icons.chevron_right : null,
            onTap: () {
              if (hasChildren) {
                setState(() {
                  _selectedPrefecture = prefecture;
                });
              } else {
                widget.onLocationSelected(prefectureData, prefecture, null, null);
                Navigator.pop(context);
              }
            },
          );
        }),
      ],
    );
  }

  Widget _buildCityList() {
    final prefectureData = japanesePrefectures[_selectedPrefecture]!;
    final cities = prefectureData.children!;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Prefecture-level selection
        _buildLocationTile(
          icon: Icons.location_city,
          title: 'All of $_selectedPrefecture',
          subtitle: 'Search entire prefecture',
          isSelected: false,
          onTap: () {
            widget.onLocationSelected(prefectureData, _selectedPrefecture, null, null);
            Navigator.pop(context);
          },
        ),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.only(left: 8, bottom: 8),
          child: Text(
            'Cities / Districts',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
        ),
        // City List
        ...cities.keys.map((city) {
          final cityData = cities[city]!;
          final hasChildren = cityData.children != null;

          return _buildLocationTile(
            icon: Icons.location_on,
            title: city,
            isSelected: false,
            trailing: hasChildren ? Icons.chevron_right : null,
            onTap: () {
              if (hasChildren) {
                setState(() {
                  _selectedCity = city;
                });
              } else {
                widget.onLocationSelected(cityData, _selectedPrefecture, city, null);
                Navigator.pop(context);
              }
            },
          );
        }),
      ],
    );
  }

  Widget _buildWardList() {
    final prefectureData = japanesePrefectures[_selectedPrefecture]!;
    final cityData = prefectureData.children![_selectedCity]!;
    final wards = cityData.children!;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // City-level selection
        _buildLocationTile(
          icon: Icons.location_on,
          title: 'All of $_selectedCity',
          subtitle: 'Search entire city',
          isSelected: false,
          onTap: () {
            widget.onLocationSelected(cityData, _selectedPrefecture, _selectedCity, null);
            Navigator.pop(context);
          },
        ),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.only(left: 8, bottom: 8),
          child: Text(
            'Wards / Areas',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
        ),
        // Ward List
        ...wards.keys.map((ward) {
          final wardData = wards[ward]!;

          return _buildLocationTile(
            icon: Icons.place,
            title: ward,
            isSelected: false,
            onTap: () {
              widget.onLocationSelected(wardData, _selectedPrefecture, _selectedCity, ward);
              Navigator.pop(context);
            },
          );
        }),
      ],
    );
  }

  Widget _buildLocationTile({
    required IconData icon,
    required String title,
    String? subtitle,
    required bool isSelected,
    IconData? trailing,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isSelected ? const Color(0xFF2E7D32) : Colors.grey[200]!,
          width: isSelected ? 2 : 1,
        ),
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isSelected
                ? const Color(0xFF2E7D32).withOpacity(0.1)
                : Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: isSelected ? const Color(0xFF2E7D32) : Colors.grey[700],
            size: 20,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
            color: isSelected ? const Color(0xFF2E7D32) : Colors.black87,
          ),
        ),
        subtitle: subtitle != null
            ? Text(
                subtitle,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                ),
              )
            : null,
        trailing: trailing != null
            ? Icon(trailing, color: Colors.grey[400])
            : (isSelected
                ? const Icon(Icons.check, color: Color(0xFF2E7D32))
                : null),
        onTap: onTap,
      ),
    );
  }
}