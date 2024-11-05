import 'package:flutter/material.dart';
import 'package:tayeur/screens/clientDetailscreen.dart';

import '../data/models/clients.dart';

class ClientCard extends StatelessWidget {
  const ClientCard({
    super.key,
    required this.clientList,
    required this.clientMesure,
  });

  final Client clientList;
  final Mesure clientMesure;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: ListTile(
        leading: CircleAvatar(
          child: Text(clientList.name[0]),
        ),
        title: Text(clientList.name),
        subtitle: Text(clientList.phone),
        trailing: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Clientdetailscreen(clients: clientList, mesureClient:clientMesure)));
            },
            icon: Icon(Icons.remove_red_eye)),
      ),
    );
  }
}
