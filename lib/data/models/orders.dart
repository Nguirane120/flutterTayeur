
class Order {
  final String id;
  final String clientId;
  final String description;
  final String status;
  final DateTime dueDate;

  Order({
    required this.id,
    required this.clientId,
    required this.description,
    required this.status,
    required this.dueDate,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'clientId': clientId,
      'description': description,
      'status': status,
      'dueDate': dueDate.toIso8601String(),
    };
  }

  static Order fromMap(Map<String, dynamic> map, String id) {
    return Order(
      id: id,
      clientId: map['clientId'],
      description: map['description'],
      status: map['status'],
      dueDate: DateTime.parse(map['dueDate']),
    );
  }
}
