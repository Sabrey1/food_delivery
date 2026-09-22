class OrdersModel {
  String? id;
  String orderNumber;
  String userId;
  String deliveryId;
  double subtotal;
  double deliveryFee;
  double discount;
  double total;
  String status;
  double paymentStatus;
  String note;
  DateTime createdAt;
  DateTime? updatedAt;

  OrdersModel({
    this.id,
    required this.orderNumber,
    required this.userId,
    required this.deliveryId,
    required this.subtotal,
    required this.deliveryFee,
    required this.discount,
    required this.total,
    required this.status,
    required this.paymentStatus,
    required this.note,
    required this.createdAt,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'orderNumber': orderNumber,
      'userId': userId,
      'deliveryId': deliveryId,
      'subtotal': subtotal,
      'deliveryFee': deliveryFee,
      'discount': discount,
      'total': total,
      'status': status,
      'paymentStatus': paymentStatus,
      'note': note,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  factory OrdersModel.fromMap(Map<String, dynamic> map) {
    return OrdersModel(
      id: map['id'],
      orderNumber: map['orderNumber'],
      userId: map['userId'],
      deliveryId: map['deliveryId'],
      subtotal: map['subtotal'],
      deliveryFee: map['deliveryFee'],
      discount: map['discount'],
      total: map['total'],
      status: map['status'],
      paymentStatus: map['paymentStatus'],
      note: map['note'],
      createdAt: DateTime.parse(map['createdAt']),
      updatedAt: map['updatedAt'] != null ? DateTime.parse(map['updatedAt']) : null,
    );
  }
}