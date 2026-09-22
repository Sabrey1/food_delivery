class CategoriesModel{
  String? id;
  String name;
  String? description;
  bool isActive = true;
  DateTime createdAt;
  DateTime? updatedAt;

  CategoriesModel({
    this.id,
    required this.name,
    this.description,
    this.isActive = true,
    required this.createdAt,
    this.updatedAt,
  });

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'name': name,
      'description': description,
      'isActive': isActive,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  factory CategoriesModel.fromMap(Map<String, dynamic> map){
    return CategoriesModel(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      isActive: map['isActive'],
      createdAt: DateTime.parse(map['createdAt']),
      updatedAt: map['updatedAt'] != null ? DateTime.parse(map['updatedAt']) : null,
    );
  }
}