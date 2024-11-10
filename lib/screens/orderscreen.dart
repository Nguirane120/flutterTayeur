import 'package:flutter/material.dart';
import 'package:tayeur/data/models/orders.dart';

class OrdersScreen extends StatelessWidget {
  final List<Order> orders = [
    Order(id: '1', clientId: '123', description: 'Commande 1', status: 'pending', dueDate: DateTime.now().add(Duration(days: 5))),
    Order(id: '2', clientId: '124', description: 'Commande 2', status: 'completed', dueDate: DateTime.now().add(Duration(days: 10))),
    Order(id: '3', clientId: '125', description: 'Commande 3', status: 'pending', dueDate: DateTime.now().add(Duration(days: 1))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return Card(
            child: ListTile(
              title: Text(order.description),
              subtitle: Text('Statut: ${order.status}'),
              trailing: Text('Due: ${order.dueDate.toLocal().toString()}'),
              onTap: () {
                // Action lors de la sélection d'une commande
              },
            ),
          );
        },
      ),
    );
  }
}
