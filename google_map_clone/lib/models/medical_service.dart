class MedicalService {
  final String id;
  final String name;
  final String category;
  final double latitude;
  final double longitude;
  final String address;
  final double distance; // in km
  final String phone;
  final double rating;
  final bool isOpen;
  final String? imageUrl;

  MedicalService({
    required this.id,
    required this.name,
    required this.category,
    required this.latitude,
    required this.longitude,
    required this.address,
    required this.distance,
    required this.phone,
    required this.rating,
    required this.isOpen,
    this.imageUrl,
  });

  factory MedicalService.fromJson(Map<String, dynamic> json) {
    return MedicalService(
      id: json['place_id'] ?? '',
      name: json['name'] ?? '',
      category: json['types']?[0] ?? 'Medical Service',
      latitude: json['geometry']['location']['lat'] ?? 0.0,
      longitude: json['geometry']['location']['lng'] ?? 0.0,
      address: json['vicinity'] ?? json['formatted_address'] ?? '',
      distance: 0.0, // Will be calculated
      phone: json['formatted_phone_number'] ?? 'N/A',
      rating: (json['rating'] ?? 0.0).toDouble(),
      isOpen: json['opening_hours']?['open_now'] ?? false,
      imageUrl: json['photos']?[0]?['photo_reference'],
    );
  }
}