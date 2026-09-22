class UserModel{
  String? id;
  String name;
  String email;
  String password;
  String? phone;
  String? photo;
  bool isActive = true;
  DateTime createdAt;
  DateTime? updatedAt;

  UserModel({
    this.id,
    required this.name,
    required this.email,
    required this.password,
    this.phone,
    this.photo,
    this.isActive = true,
    required this.createdAt,
    this.updatedAt,
  });

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
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
      name: map['name'],
      email: map['email'],
      password: map['password'],
      phone: map['phone'],
      photo: map['photo'],
      isActive: map['isActive'],
      createdAt: DateTime.parse(map['createdAt']),
      updatedAt: map['updatedAt'] != null ? DateTime.parse(map['updatedAt']) : null,
    );
  }

}