import 'package:flutter/material.dart';
import 'package:tayeur/data/models/clients.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.clients,
  });

  final List<Client> clients;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFD1C000),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.people,
                  size: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  clients.length.toString(),
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text("Clients", style: TextStyle(fontSize: 30, color: Colors.white))
          ],
        ),
      ),
    );
  }
}
