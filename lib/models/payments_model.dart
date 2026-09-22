class PaymentsModel {
  String? id;
  String? orderId;
  String? PaymentMethod;
  double? amount;
  String? status;
  DateTime? paidAt;
  DateTime createdAt;
  DateTime? updatedAt;

  PaymentsModel({
    this.id,
    this.orderId,
    this.PaymentMethod,
    this.amount,
    this.status,
    this.paidAt,
    required this.createdAt,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'orderId': orderId,
      'PaymentMethod': PaymentMethod,
      'amount': amount,
      'status': status,
      'paidAt': paidAt?.toIso8601String(),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  factory PaymentsModel.fromMap(Map<String, dynamic> map) {
    return PaymentsModel(
      id: map['id'],
      orderId: map['orderId'],
      PaymentMethod: map['PaymentMethod'],
      amount: map['amount'],
      status: map['status'],
      paidAt: map['paidAt'] != null ? DateTime.parse(map['paidAt']) : null,
      createdAt: DateTime.parse(map['createdAt']),
      updatedAt: map['updatedAt'] != null
          ? DateTime.parse(map['updatedAt'])
          : null,
    );
  }
}