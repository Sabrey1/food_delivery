class ProductModel{
  String? id;
  String categoryId;
  String name;
  String? description;
  String? image;
  double price;
  bool isAvailable = true;
  DateTime createdAt;
  DateTime? updatedAt;

  ProductModel({
    this.id,
    required this.categoryId,
    required this.name,
    this.description,
    this.image,
    required this.price,
    this.isAvailable = true,
    required this.createdAt,
    this.updatedAt,
  });

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'categoryId': categoryId,
      'name': name,
      'description': description,
      'image': image,
      'price': price,
      'isAvailable': isAvailable,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map){
    return ProductModel(
      id: map['id'],
      categoryId: map['categoryId'],
      name: map['name'],
      description: map['description'],
      image: map['image'],
      price: map['price'],
      isAvailable: map['isAvailable'],
      createdAt: DateTime.parse(map['createdAt']),
      updatedAt: map['updatedAt'] != null ? DateTime.parse(map['updatedAt']) : null,
    );
  }
}
