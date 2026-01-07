import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class TransitDetailsScreen extends StatefulWidget {
  final Map<String, dynamic> directionsData;
  final List<LatLng> routePoints;
  final String destinationName;
  final double startLat;
  final double startLng;
  final double endLat;
  final double endLng;
  final String travelMode;

  const TransitDetailsScreen({
    super.key,
    required this.directionsData,
    required this.routePoints,
    required this.destinationName,
    required this.startLat,
    required this.startLng,
    required this.endLat,
    required this.endLng,
    this.travelMode = 'transit',
  });

  @override
  State<TransitDetailsScreen> createState() => _TransitDetailsScreenState();
}

class _TransitDetailsScreenState extends State<TransitDetailsScreen> {
  String _selectedTravelMode = 'transit';
  int _selectedRouteIndex = 0;

  @override
  Widget build(BuildContext context) {
    final routes = widget.directionsData['routes'] as List<dynamic>;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Travel mode tabs (Best, Car, Transit, Walk, Bike, Plane)
            _buildTravelModeTabs(),

            const Divider(height: 1),

            // Location input fields with swap button
            _buildLocationFields(),

            const Divider(height: 1),

            // Leave now / Options section
            _buildDepartureOptions(),

            const Divider(height: 1, thickness: 8, color: Color(0xFFF5F5F5)),

            // Send to phone / Copy link
            _buildActionButtons(),

            const Divider(height: 1, thickness: 1),

            // Route details
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: routes.length,
                itemBuilder: (context, index) {
                  return _buildRouteCard(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTravelModeTabs() {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildTravelModeTab(Icons.auto_awesome, 'Best', 'best', false),
            _buildTravelModeTab(Icons.directions_car, '32 min', 'driving', false),
            _buildTravelModeTab(Icons.directions_transit, '1h 28m', 'transit', true),
            _buildTravelModeTab(Icons.directions_walk, '3h 55m', 'walking', false),
            _buildTravelModeTab(Icons.directions_bike, '1h 36m', 'bicycling', false),
            _buildTravelModeTab(Icons.flight, '—', 'flight', false),
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTravelModeTab(IconData icon, String label, String mode, bool isSelected) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedTravelMode = mode;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isSelected ? Colors.blue : Colors.transparent,
              width: 3,
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.blue : Colors.grey[700],
              size: 24,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                color: isSelected ? Colors.blue : Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationFields() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          // Origin/Destination indicators
          Column(
            children: [
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 3),
                ),
              ),
              Container(width: 2, height: 8, color: Colors.grey[400]),
              Container(width: 2, height: 4, color: Colors.grey[400]),
              Container(width: 2, height: 4, color: Colors.grey[400]),
              Container(width: 2, height: 8, color: Colors.grey[400]),
              const Icon(Icons.location_on, color: Colors.red, size: 20),
            ],
          ),
          const SizedBox(width: 16),

          // Input fields
          Expanded(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300]!),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Text('Your location', style: TextStyle(fontSize: 15)),
                ),
                const SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300]!),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    widget.destinationName,
                    style: const TextStyle(fontSize: 15),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),

          // Swap button
          IconButton(
            icon: const Icon(Icons.swap_vert),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDepartureOptions() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300]!),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(Icons.add, size: 20),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: InkWell(
              onTap: () {},
              child: Row(
                children: [
                  const Icon(Icons.access_time, size: 20),
                  const SizedBox(width: 8),
                  const Text('Leave now', style: TextStyle(fontSize: 15)),
                  const SizedBox(width: 4),
                  Icon(Icons.arrow_drop_down, color: Colors.grey[600]),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Options', style: TextStyle(color: Colors.blue, fontSize: 15)),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () async {
                try {
                  final url = Uri.parse(
                    'https://www.google.com/maps/dir/?api=1&origin=${widget.startLat},${widget.startLng}&destination=${widget.endLat},${widget.endLng}&travelmode=${widget.travelMode}'
                  );
                  await launchUrl(url, mode: LaunchMode.externalApplication);
                } catch (e) {
                  if (mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Could not open Google Maps'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                }
              },
              child: Row(
                children: [
                  Icon(Icons.phone_iphone, color: Colors.blue[700], size: 20),
                  const SizedBox(width: 8),
                  Text(
                    'Send directions to your phone',
                    style: TextStyle(
                      color: Colors.blue[700],
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 16),
          InkWell(
            onTap: () {
              final link = 'https://www.google.com/maps/dir/?api=1&origin=${widget.startLat},${widget.startLng}&destination=${widget.endLat},${widget.endLng}&travelmode=${widget.travelMode}';
              Clipboard.setData(ClipboardData(text: link));
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Link copied to clipboard')),
              );
            },
            child: Row(
              children: [
                Icon(Icons.link, color: Colors.blue[700], size: 20),
                const SizedBox(width: 8),
                Text(
                  'Copy link',
                  style: TextStyle(
                    color: Colors.blue[700],
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRouteCard(int routeIndex) {
    final route = widget.directionsData['routes'][routeIndex];
    final leg = route['legs'][0];
    final steps = leg['steps'] as List<dynamic>;
    final totalDuration = leg['duration']['text'];
    final totalDistance = leg['distance']['text'];
    final departureTime = leg['departure_time']?['text'];
    final arrivalTime = leg['arrival_time']?['text'];
    final fare = leg['fare'];
    final fareText = fare != null ? '¥${fare['value']}' : null;

    final isSelected = routeIndex == _selectedRouteIndex;

    // Find first transit step for departure info
    final firstTransitStep = steps.firstWhere(
      (s) => s['travel_mode'] == 'TRANSIT',
      orElse: () => null,
    );

    String? firstStopName;
    String? frequency;
    String? walkTime;

    if (firstTransitStep != null) {
      final transitDetails = firstTransitStep['transit_details'];
      firstStopName = transitDetails?['departure_stop']?['name'];

      // Get walk time to first stop
      final walkSteps = steps.where((s) =>
        s['travel_mode'] == 'WALKING' &&
        steps.indexOf(s) < steps.indexOf(firstTransitStep)
      ).toList();

      if (walkSteps.isNotEmpty) {
        final totalWalkSeconds = walkSteps.fold<int>(
          0,
          (sum, step) => sum + ((step['duration']?['value'] ?? 0) as int),
        );
        walkTime = '${(totalWalkSeconds / 60).round()} min';
      }

      // Frequency info (hardcoded for now, would come from API)
      frequency = 'every 20 min';
    }

    return InkWell(
      onTap: () {
        setState(() {
          _selectedRouteIndex = routeIndex;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            left: BorderSide(
              color: isSelected ? Colors.blue : Colors.transparent,
              width: 4,
            ),
            bottom: BorderSide(color: Colors.grey[200]!, width: 1),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Times
                        Row(
                          children: [
                            Text(
                              departureTime ?? '',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(' — ', style: TextStyle(fontSize: 20)),
                            Text(
                              arrivalTime ?? '',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        // Transit icons
                        _buildTransitSummaryIcons(steps),
                      ],
                    ),
                  ),
                  // Duration and fare
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        totalDuration,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      if (fareText != null) ...[
                        const SizedBox(height: 4),
                        Text(
                          fareText,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),

            // Departure info
            if (firstStopName != null)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  '${departureTime ?? ''} from $firstStopName',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[700],
                  ),
                ),
              ),

            if (walkTime != null || frequency != null)
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                child: Row(
                  children: [
                    if (walkTime != null) ...[
                      Icon(Icons.directions_walk, size: 14, color: Colors.grey[600]),
                      const SizedBox(width: 4),
                      Text(
                        walkTime,
                        style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                      ),
                    ],
                    if (walkTime != null && frequency != null)
                      const SizedBox(width: 16),
                    if (frequency != null)
                      Text(
                        frequency,
                        style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                      ),
                  ],
                ),
              ),

            // Details button
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  _showDetailedSteps(steps);
                },
                child: const Text('Details'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransitSummaryIcons(List<dynamic> steps) {
    final transitSteps = steps.where((s) => s['travel_mode'] == 'TRANSIT').toList();

    return Wrap(
      spacing: 4,
      runSpacing: 4,
      children: [
        Icon(Icons.directions_walk, size: 16, color: Colors.grey[700]),
        ...transitSteps.take(3).expand((step) {
          final transit = step['transit_details'];
          if (transit == null) return [const SizedBox.shrink()];

          final line = transit['line'];
          final vehicleType = line['vehicle']?['type'] ?? 'BUS';
          final lineName = line['short_name'] ?? line['name'] ?? '';
          final lineColor = line['color'] != null
              ? _parseColor(line['color'])
              : _getVehicleColor(vehicleType);

          return [
            Icon(Icons.arrow_forward, size: 12, color: Colors.grey[400]),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: lineColor,
                borderRadius: BorderRadius.circular(3),
              ),
              child: Text(
                lineName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ];
        }).toList(),
        if (transitSteps.isNotEmpty) ...[
          Icon(Icons.arrow_forward, size: 12, color: Colors.grey[400]),
          Icon(Icons.directions_walk, size: 16, color: Colors.grey[700]),
        ],
      ],
    );
  }

  void _showDetailedSteps(List<dynamic> steps) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.9,
        minChildSize: 0.5,
        maxChildSize: 0.95,
        builder: (context, scrollController) => Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          child: Column(
            children: [
              // Handle bar
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2),
                ),
              ),

              // Header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Step-by-step directions',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),

              const Divider(height: 1),

              // Steps list
              Expanded(
                child: ListView.separated(
                  controller: scrollController,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  itemCount: steps.length,
                  separatorBuilder: (context, index) => const SizedBox.shrink(),
                  itemBuilder: (context, index) {
                    final step = steps[index];
                    final isLast = index == steps.length - 1;
                    return _buildStepItem(step, isLast);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStepItem(Map<String, dynamic> step, bool isLast) {
    final travelMode = step['travel_mode'];

    if (travelMode == 'TRANSIT') {
      return _buildTransitStep(step);
    } else if (travelMode == 'WALKING') {
      return _buildWalkingStep(step);
    }

    return const SizedBox.shrink();
  }

  Widget _buildTransitStep(Map<String, dynamic> step) {
    final transitDetails = step['transit_details'];
    if (transitDetails == null) return const SizedBox.shrink();

    final line = transitDetails['line'];
    final departureStop = transitDetails['departure_stop'];
    final arrivalStop = transitDetails['arrival_stop'];
    final numStops = transitDetails['num_stops'];
    final departureTime = transitDetails['departure_time']?['text'];
    final arrivalTime = transitDetails['arrival_time']?['text'];
    final headsign = transitDetails['headsign'];
    final vehicleType = line['vehicle']?['type'] ?? 'BUS';
    final lineName = line['short_name'] ?? line['name'] ?? '';
    final lineColor = line['color'] != null
        ? _parseColor(line['color'])
        : _getVehicleColor(vehicleType);

    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 2),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Left timeline with times
            SizedBox(
              width: 60,
              child: Column(
                children: [
                  Container(
                    height: 50,
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right: 16),
                    child: Text(
                      departureTime ?? '',
                      style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 4,
                      margin: const EdgeInsets.only(right: 28),
                      color: lineColor,
                    ),
                  ),
                  Container(
                    height: 50,
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right: 16),
                    child: Text(
                      arrivalTime ?? '',
                      style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),

            // Timeline dots
            Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: lineColor, width: 3),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(width: 4, color: lineColor),
                ),
                Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: lineColor, width: 3),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),

            // Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Departure station
                  Container(
                    height: 50,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      departureStop['name'],
                      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ),

                  // Transit line info
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: lineColor,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    _getVehicleIcon(vehicleType),
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    lineName,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                headsign ?? line['name'] ?? '',
                                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '$numStops ${numStops == 1 ? 'stop' : 'stops'}',
                          style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),

                  // Arrival station
                  Container(
                    height: 50,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      arrivalStop['name'],
                      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWalkingStep(Map<String, dynamic> step) {
    final distance = step['distance']?['text'] ?? '';
    final duration = step['duration']?['text'] ?? '';
    final instruction = _stripHtml(step['html_instructions'] ?? 'Walk');

    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 2),
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Time/Duration
          SizedBox(
            width: 60,
            child: Text(
              duration,
              textAlign: TextAlign.right,
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
          ),

          // Walking icon
          Container(
            width: 50,
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(top: 2),
            child: Icon(Icons.directions_walk, color: Colors.grey[700], size: 24),
          ),

          // Content
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Walk $distance',
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    instruction,
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _stripHtml(String htmlString) {
    return htmlString
        .replaceAll(RegExp(r'<[^>]*>'), '')
        .replaceAll('&nbsp;', ' ')
        .replaceAll('&amp;', '&')
        .replaceAll('&lt;', '<')
        .replaceAll('&gt;', '>');
  }

  IconData _getVehicleIcon(String type) {
    switch (type.toUpperCase()) {
      case 'BUS':
        return Icons.directions_bus;
      case 'SUBWAY':
      case 'METRO_RAIL':
        return Icons.subway;
      case 'TRAIN':
      case 'HEAVY_RAIL':
      case 'COMMUTER_TRAIN':
        return Icons.train;
      case 'TRAM':
      case 'LIGHT_RAIL':
        return Icons.tram;
      case 'FERRY':
        return Icons.directions_boat;
      default:
        return Icons.directions_transit;
    }
  }

  Color _getVehicleColor(String type) {
    switch (type.toUpperCase()) {
      case 'BUS':
        return const Color(0xFF1976D2);
      case 'SUBWAY':
      case 'METRO_RAIL':
        return const Color(0xFFE65100);
      case 'TRAIN':
      case 'HEAVY_RAIL':
      case 'COMMUTER_TRAIN':
        return const Color(0xFF388E3C);
      case 'TRAM':
      case 'LIGHT_RAIL':
        return const Color(0xFF7B1FA2);
      case 'FERRY':
        return const Color(0xFF0097A7);
      default:
        return const Color(0xFF616161);
    }
  }

  Color _parseColor(String colorHex) {
    try {
      final hex = colorHex.replaceAll('#', '');
      if (hex.length == 6) {
        return Color(int.parse('FF$hex', radix: 16));
      }
      return const Color(0xFF1976D2);
    } catch (e) {
      return const Color(0xFF1976D2);
    }
  }
}
