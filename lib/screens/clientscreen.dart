import 'package:flutter/material.dart';
import 'package:tayeur/data/models/clients.dart';
import 'package:tayeur/screens/addclientscreen.dart';
import 'package:tayeur/widgets/clientList.dart';
import 'package:tayeur/widgets/containerWidget.dart';

class ClientsScreen extends StatefulWidget {
  @override
  State<ClientsScreen> createState() => _ClientsScreenState();
}

class _ClientsScreenState extends State<ClientsScreen> {
  final List<Client> clients = [
    Client(
      id: "1",
      name: "Alioune",
      phone: "7777777",
      address: "Dakar",
      clientType: 'homme',
      mesure: Mesure(
        cou: 40,
        epaule: 50,
        manches: 60,
        ceinture: 80,
        tourDeBas: 100,
        tourDeHanches: 90,
        tourDeCuisse: 55,
        longueurHaut: 70,
        longueurBas: 100,
        longueurBooubou: 120,
        poitrine: 95,
        tourDeBras: 35, // Champ spécifique aux hommes
      ),
    ),
    Client(
      id: "2",
      name: "Badara",
      phone: "7777777",
      address: "Thies",
      clientType: "femme",
      mesure: Mesure(
        cou: 35,
        epaule: 45,
        manches: 55,
        ceinture: 75,
        tourDeBas: 90,
        tourDeHanches: 85,
        tourDeCuisse: 50,
        longueurHaut: 65,
        longueurBas: 95,
        longueurBooubou: 110,
        poitrine: 80,
        tourDeTaille: 70, // Champ spécifique aux femmes
        longueurRobe: 105,
        longueurJupe: 10, // Champ spécifique aux femmes
      ),
    ),
    Client(
      id: "3",
      name: "Nguirane",
      phone: "7777777",
      address: "Kl",
      clientType: "homme",
      mesure: Mesure(
        cou: 38,
        epaule: 48,
        manches: 58,
        ceinture: 78,
        tourDeBas: 90,
        tourDeHanches: 88,
        tourDeCuisse: 54,
        longueurHaut: 68,
        longueurBas: 98,
        longueurBooubou: 118,
        poitrine: 92,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: ContainerWidget(clients: clients)),
              // Expanded(child: ContainerWidget()),
            ],
          ),
          ClientList(clients: clients),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddClientScreen()));
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        tooltip: 'Ajouter un client',
      ),
    );
  }
}
