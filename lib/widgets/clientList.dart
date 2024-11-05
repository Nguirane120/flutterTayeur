import 'package:flutter/material.dart';
import 'package:tayeur/data/models/clients.dart';
import 'package:tayeur/widgets/clientCard.dart';

class ClientList extends StatelessWidget {
  const ClientList({
    super.key,
    required this.clients,
  });

  final List<Client> clients;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: clients.length, 
        itemBuilder: (context, index) {
          final clientList = clients[index];
          final mesure = clientList.mesure;

          return ClientCard(clientList: clientList, clientMesure:mesure);
        },
      ),
    );
  }
}

