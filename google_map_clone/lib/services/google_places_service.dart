import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/medical_service.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:math';

class GooglePlacesService {
  static const String apiKey = 'AIzaSyAx97gz4fPMT7RJDEoIiuwmUeVh3Kr2YDQ'; // Replace with your API key
  static const String baseUrl = 'https://maps.googleapis.com/maps/api/place';
  
  // Search for nearby medical services
  Future<List<MedicalService>> searchNearbyServices({
    required double latitude,
    required double longitude,
    required String serviceType,
    double radiusInMeters = 5000, // 5km default
  }) async {
    try {
      final url = Uri.parse(
        '$baseUrl/nearbysearch/json?location=$latitude,$longitude&radius=$radiusInMeters&type=$serviceType&key=$apiKey'
      );
      
      final response = await http.get(url);
      
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        
        if (data['status'] == 'OK') {
          final List results = data['results'];
          
          return results.map((place) {
            final service = MedicalService.fromJson(place);
            final distance = _calculateDistance(
              latitude, 
              longitude, 
              service.latitude, 
              service.longitude
            );
            
            return MedicalService(
              id: service.id,
              name: service.name,
              category: service.category,
              latitude: service.latitude,
              longitude: service.longitude,
              address: service.address,
              distance: distance,
              phone: service.phone,
              rating: service.rating,
              isOpen: service.isOpen,
              imageUrl: service.imageUrl,
            );
          }).toList();
        }
      }
      
      return [];
    } catch (e) {
      print('Error fetching places: $e');
      return [];
    }
  }
  
  // Get place details
  Future<Map<String, dynamic>?> getPlaceDetails(String placeId) async {
    try {
      final url = Uri.parse(
        '$baseUrl/details/json?place_id=$placeId&fields=name,formatted_address,formatted_phone_number,geometry,rating,opening_hours,photos,website&key=$apiKey'
      );
      
      final response = await http.get(url);
      
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        
        if (data['status'] == 'OK') {
          return data['result'];
        }
      }
      
      return null;
    } catch (e) {
      print('Error fetching place details: $e');
      return null;
    }
  }
  
  // Get directions between two points
  Future<Map<String, dynamic>?> getDirections({
    required double startLat,
    required double startLng,
    required double endLat,
    required double endLng,
    String mode = 'driving', // driving, walking, bicycling, transit
  }) async {
    try {
      final url = Uri.parse(
        'https://maps.googleapis.com/maps/api/directions/json?origin=$startLat,$startLng&destination=$endLat,$endLng&mode=$mode&key=$apiKey'
      );
      
      final response = await http.get(url);
      
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        
        if (data['status'] == 'OK') {
          return data;
        }
      }
      
      return null;
    } catch (e) {
      print('Error fetching directions: $e');
      return null;
    }
  }
  
  // Get current location
  Future<Position?> getCurrentLocation() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return null;
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return null;
        }
      }
      
      if (permission == LocationPermission.deniedForever) {
        return null;
      }

      return await Geolocator.getCurrentPosition();
    } catch (e) {
      print('Error getting location: $e');
      return null;
    }
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
  
  // Get photo URL
  String getPhotoUrl(String photoReference, {int maxWidth = 400}) {
    return '$baseUrl/photo?maxwidth=$maxWidth&photo_reference=$photoReference&key=$apiKey';
  }
}