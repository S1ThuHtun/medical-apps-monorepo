import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:math';
import '../data/medical_services_data.dart';
import '../data/prefecture_data.dart';
import '../models/medical_service.dart';
import '../services/google_places_service.dart';
import '../services/auth_services.dart';
import '../utils/language_selection_utils.dart';
import '../widgets/category_tabs_widget.dart';
import '../widgets/service_grid_widget.dart';
import '../widgets/results_header_widget.dart';
import '../widgets/services_list_widget.dart';
import '../widgets/location_selector_screen_widget.dart';
import 'sign_up_screen.dart';

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

    print('🏥 HomeScreen: Requesting location...');
    final result = await _placesService.getCurrentLocationWithStatus();

    if (result.position != null) {
      print('🏥 HomeScreen: Location received successfully');
      setState(() {
        _currentPosition = result.position;
        _isLoading = false;
      });

      // Auto-search for nearby hospitals on app start (only if no service selected yet)
      if (_selectedService == null) {
        await _searchNearbyServices('Emergency Care');
      }
    } else {
      print('🏥 HomeScreen: Failed to get location - ${result.error}');
      setState(() => _isLoading = false);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(result.error ?? 'Unable to get location. Please enable location services and grant permission.'),
            backgroundColor: Colors.red,
            action: result.needsSettings
                ? SnackBarAction(
                    label: 'Settings',
                    textColor: Colors.white,
                    onPressed: () async {
                      await Geolocator.openAppSettings();
                    },
                  )
                : SnackBarAction(
                    label: 'Retry',
                    textColor: Colors.white,
                    onPressed: () {
                      _getCurrentLocation();
                    },
                  ),
            duration: const Duration(seconds: 8),
          ),
        );
      }
    }
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
        builder: (context) => LocationSelectorScreen(
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

  void _showSettingsMenu() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.language, color: Color(0xFF2E7D32)),
                title: const Text('Language'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.pop(context);
                  languageSelection(context);
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.logout, color: Colors.red),
                title: const Text('Logout', style: TextStyle(color: Colors.red)),
                onTap: () async {
                  Navigator.pop(context);
                  await _handleLogout();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _handleLogout() async {
    try {
      await authServices.value.signOut();
      if (mounted) {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const SignUpScreen()),
          (route) => false,
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error logging out: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
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
            icon: const Icon(Icons.arrow_drop_down),
            onPressed: _showLocationSelector,
            color: const Color(0xFF2E7D32),
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: _showSettingsMenu,
            color: const Color(0xFF2E7D32),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _getCurrentLocation,
        color: const Color(0xFF2E7D32),
        child: Column(
          children: [
            CategoryTabsWidget(
              selectedCategory: _selectedCategory,
              onCategorySelected: (category) {
                setState(() {
                  _selectedCategory = category;
                  _nearbyServices.clear();
                  _selectedService = null;
                });
              },
            ),
            ServiceGridWidget(
              selectedCategory: _selectedCategory,
              selectedService: _selectedService,
              onServiceSelected: _searchNearbyServices,
            ),
            if (_nearbyServices.isNotEmpty)
              ResultsHeaderWidget(serviceCount: _nearbyServices.length),
            Expanded(
              child: ServicesListWidget(
                isLoading: _isLoading,
                nearbyServices: _nearbyServices,
                currentPosition: _currentPosition,
                selectedLocation: _selectedLocation,
                onRetry: _getCurrentLocation,
              ),
            ),
          ],
        ),
      ),
    );
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