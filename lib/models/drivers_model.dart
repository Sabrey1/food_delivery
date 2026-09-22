class DriversModel {
  String? id;
  String userId;
  String vehicleType;
  String vehicleNumber;
  bool isAvailable;
  double rating;
  double latitude;
  double longitude;

  DriversModel({
    this.id,
    required this.userId,
    required this.vehicleType,
    required this.vehicleNumber,
    required this.isAvailable,
    required this.rating,
    required this.latitude,
    required this.longitude,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'vehicleType': vehicleType,
      'vehicleNumber': vehicleNumber,
      'isAvailable': isAvailable,
      'rating': rating,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory DriversModel.fromMap(Map<String, dynamic> map) {
    return DriversModel(
      id: map['id'],
      userId: map['userId'],
      vehicleType: map['vehicleType'],
      vehicleNumber: map['vehicleNumber'],
      isAvailable: map['isAvailable'],
      rating: map['rating'],
      latitude: map['latitude'],
      longitude: map['longitude'],
    );
  }
}