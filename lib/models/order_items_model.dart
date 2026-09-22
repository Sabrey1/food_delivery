class OrderItemsModel {
  String? id;
  String? orderId;
  String? productId;
  String? productName;
  double? price;
  double? quantity;
  double? subtotal;
  DateTime? createdAt;

  OrderItemsModel({
    this.id,
    this.orderId,
    this.productId,
    this.productName,
    this.price,
    this.quantity,
    this.subtotal,
    this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'orderId': orderId,
      'productId': productId,
      'productName': productName,
      'price': price,
      'quantity': quantity,
      'subtotal': subtotal,
      'createdAt': createdAt?.toIso8601String(),
    };
  }

  factory OrderItemsModel.fromMap(Map<String, dynamic> map) {
    return OrderItemsModel(
      id: map['id'],
      orderId: map['orderId'],
      productId: map['productId'],
      productName: map['productName'],
      price: map['price'],
      quantity: map['quantity'],
      subtotal: map['subtotal'],
      createdAt: map['createdAt'] != null ? DateTime.parse(map['createdAt']) : null,
    );
  }
}