import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Écran de Gestion des Commandes',
          style: TextStyle(fontSize: 18),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Logique pour ajouter une nouvelle commande
          print("Ajouter une commande");
        },
        child: const Icon(Icons.add),
        tooltip: 'Ajouter une commande',
      ),
    );
  }
}
