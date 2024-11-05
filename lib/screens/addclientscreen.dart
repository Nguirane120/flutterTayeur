import 'package:flutter/material.dart';

class AddClientScreen extends StatefulWidget {
  @override
  _AddClientScreenState createState() => _AddClientScreenState();
}

class _AddClientScreenState extends State<AddClientScreen> {
  final _formKey = GlobalKey<FormState>();
  String clientType = 'homme'; // Par défaut, on choisit "homme"
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  // Controllers pour les mesures
  final TextEditingController couController = TextEditingController();
  final TextEditingController epauleController = TextEditingController();
  final TextEditingController manchesController = TextEditingController();
  final TextEditingController ceintureController = TextEditingController();
  final TextEditingController tourDeBasController = TextEditingController();
  final TextEditingController tourDeHanchesController = TextEditingController();
  final TextEditingController tourDeCuisseController = TextEditingController();
  final TextEditingController longueurHautController = TextEditingController();
  final TextEditingController longueurBasController = TextEditingController();
  final TextEditingController longueurBooubouController =
      TextEditingController();
  final TextEditingController longueurJupeController = TextEditingController();
  final TextEditingController poitrineController = TextEditingController();
  final TextEditingController tourDeTailleController = TextEditingController();
  final TextEditingController longueurBrasController = TextEditingController();
  final TextEditingController longueurRobeController = TextEditingController();
  final TextEditingController tourDeBrasController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Ajouter un Client'),
        backgroundColor: Color(0xFF0C5E69), // Couleur verte
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Nom'),
                validator: (value) =>
                    value == null || value.isEmpty ? 'Entrez un nom' : null,
              ),
              TextFormField(
                controller: phoneController,
                decoration: InputDecoration(labelText: 'Téléphone'),
                keyboardType: TextInputType.phone,
                validator: (value) => value == null || value.isEmpty
                    ? 'Entrez un numéro de téléphone'
                    : null,
              ),
              TextFormField(
                controller: addressController,
                decoration: InputDecoration(labelText: 'Adresse'),
                validator: (value) => value == null || value.isEmpty
                    ? 'Entrez une adresse'
                    : null,
              ),
              DropdownButtonFormField<String>(
                value: clientType,
                items: [
                  DropdownMenuItem(value: 'homme', child: Text('Homme')),
                  DropdownMenuItem(value: 'femme', child: Text('Femme')),
                  DropdownMenuItem(value: 'enfant', child: Text('Enfant')),
                ],
                onChanged: (value) {
                  setState(() {
                    clientType = value!;
                  });
                },
                decoration: InputDecoration(labelText: 'Type de Client'),
              ),
              SizedBox(height: 20),
              Text('Mesures',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

              // Champs communs pour les mesures
              TextFormField(
                controller: couController,
                decoration: InputDecoration(labelText: 'Tour de Cou'),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                controller: epauleController,
                decoration: InputDecoration(labelText: 'Épaule'),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                controller: manchesController,
                decoration: InputDecoration(labelText: 'Longueur des Manches'),
                keyboardType: TextInputType.number,
              ),

              // Champs spécifiques pour homme
              if (clientType == 'homme')
                TextFormField(
                  controller: tourDeBrasController,
                  decoration: InputDecoration(labelText: 'Tour de Bras'),
                  keyboardType: TextInputType.number,
                ),

              // Champs spécifiques pour femme
              if (clientType == 'femme') ...[
                TextFormField(
                  controller: tourDeTailleController,
                  decoration: InputDecoration(labelText: 'Tour de Taille'),
                  keyboardType: TextInputType.number,
                ),
                TextFormField(
                  controller: longueurJupeController,
                  decoration: InputDecoration(labelText: 'Longueur de la Jupe'),
                  keyboardType: TextInputType.number,
                ),
                TextFormField(
                  controller: longueurRobeController,
                  decoration: InputDecoration(labelText: 'Longueur de la Robe'),
                  keyboardType: TextInputType.number,
                ),
              ],

              // Champs spécifiques pour enfant
              if (clientType == 'enfant') ...[
                TextFormField(
                  controller: longueurHautController,
                  decoration: InputDecoration(labelText: 'Longueur du Haut'),
                  keyboardType: TextInputType.number,
                ),
                TextFormField(
                  controller: longueurBasController,
                  decoration: InputDecoration(labelText: 'Longueur du Bas'),
                  keyboardType: TextInputType.number,
                ),
              ],

              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFD1C000), // Couleur de fond
                  borderRadius: BorderRadius.circular(10), // Coins arrondis
                  border: Border.all(
                      color: Colors.black, width: 2), // Bordure personnalisée
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(2, 2), // Décalage de l'ombre
                      blurRadius: 4, // Flou de l'ombre
                    ),
                  ],
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .transparent, // Fond transparent pour voir le `Container`
                    shadowColor: Colors
                        .transparent, // Pas d'ombre supplémentaire d'ElevatedButton
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Coins arrondis
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30), // Padding du texte
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Sauvegarde dans Firebase
                    }
                  },
                  child: Text(
                    'Ajouter Client',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Couleur du texte
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
