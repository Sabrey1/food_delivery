class ReviewsModel {
  String? id;
  String userId;
  String orderId;
  String rating;
  String? comment;
  DateTime createdAt;
  DateTime? updatedAt;

  ReviewsModel({
    this.id,
    required this.userId,
    required this.orderId,
    required this.rating,
    this.comment,
    required this.createdAt,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'orderId': orderId,
      'rating': rating,
      'comment': comment,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  factory ReviewsModel.fromMap(Map<String, dynamic> map) {
    return ReviewsModel(
      id: map['id'],
      userId: map['userId'],
      orderId: map['orderId'],
      rating: map['rating'],
      comment: map['comment'],
      createdAt: DateTime.parse(map['createdAt']),
      updatedAt: map['updatedAt'] != null ? DateTime.parse(map['updatedAt']) : null,
    );
  }
}