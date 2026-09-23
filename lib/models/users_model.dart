class UserModel{
  String? id;
  String username;
  String email;
  String? phone;
  String? photo;
  bool isActive = true;
  DateTime createdAt;
  DateTime? updatedAt;

  UserModel({
    this.id,
    required this.username,
    required this.email,
    this.phone,
    this.photo,
    this.isActive = true,
    required this.createdAt,
    this.updatedAt,
  });

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'username': username,
      'email': email,
      'phone': phone,
      'photo': photo,
      'isActive': isActive,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map){
    return UserModel(
      id: map['id'],
      username: map['username'],
      email: map['email'],
      phone: map['phone'],
      photo: map['photo'],
      isActive: map['isActive'],
      createdAt: DateTime.parse(map['createdAt']),
      updatedAt: map['updatedAt'] != null ? DateTime.parse(map['updatedAt']) : null,
    );
  }

}