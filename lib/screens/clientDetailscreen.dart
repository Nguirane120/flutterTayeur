import 'package:flutter/material.dart';
import 'package:tayeur/data/models/clients.dart';
import 'package:tayeur/widgets/clientInfo.dart';
import 'package:tayeur/widgets/mesurWidget.dart';

class Clientdetailscreen extends StatelessWidget {
  Clientdetailscreen(
      {super.key, required this.clients, required this.mesureClient});
  final Client clients;
  final Mesure mesureClient;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Détails du client"),
      ),
      body: Column(
        children: [
          // Informations de base du client
          Card(
            margin: const EdgeInsets.all(20),
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Informations Client",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Clientinfo(label: "Nom", value: clients.name),
                  Clientinfo(label: "Téléphone", value: clients.phone),
                  Clientinfo(label: "Adresse", value: clients.address),
                  Clientinfo(label: "Sexe", value: clients.clientType),
                ],
              ),
            ),
          ),

          // Informations de mesure du client
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Card(
                margin: const EdgeInsets.all(20),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Mesures",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      Mesurwidget(label: "Cou", value: mesureClient.cou),
                      Mesurwidget(label: "Épaule", value: mesureClient.epaule),
                      Mesurwidget(
                          label: "Manches", value: mesureClient.manches),
                      Mesurwidget(
                          label: "Ceinture", value: mesureClient.ceinture),
                      Mesurwidget(
                          label: "Tour de Hanches",
                          value: mesureClient.tourDeHanches),
                      Mesurwidget(
                          label: "Tour de Cuisse",
                          value: mesureClient.tourDeCuisse),
                      Mesurwidget(
                          label: "Longueur Haut",
                          value: mesureClient.longueurHaut),
                      Mesurwidget(
                          label: "Longueur Bas",
                          value: mesureClient.longueurBas),
                      Mesurwidget(
                          label: "Longueur Boubou",
                          value: mesureClient.longueurBooubou),
                      Mesurwidget(
                          label: "Poitrine", value: mesureClient.poitrine),
                      if (clients.clientType == "homme" &&
                          mesureClient.tourDeBras != null)
                        Mesurwidget(
                            label: "Tour de Bras",
                            value: mesureClient.tourDeBras),
                      if (clients.clientType == "femme") ...[
                        Mesurwidget(
                            label: "Tour de Taille",
                            value: mesureClient.tourDeTaille),
                        Mesurwidget(
                            label: "Longueur Jupe",
                            value: mesureClient.longueurJupe),
                        Mesurwidget(
                            label: "Longueur Robe",
                            value: mesureClient.longueurRobe),
                        Mesurwidget(
                            label: "Longueur Bras",
                            value: mesureClient.longueurBras),
                        Mesurwidget(
                            label: "Tour de Bas",
                            value: mesureClient.tourDeBas),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
