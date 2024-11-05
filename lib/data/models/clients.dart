class Client {
  final String id;
  final String name;
  final String phone;
  final String address;
  final String clientType;
  final Mesure mesure; // Association avec les mesures

  Client({
    required this.id,
    required this.name,
    required this.phone,
    required this.address,
    required this.clientType,
    required this.mesure,
  });

  // Conversion de Client et Mesure en Map pour Firebase
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'address': address,
      "clientType": clientType,
      "mesure": mesure.toMap(), // Appel à toMap() de Mesure pour la conversion
    };
  }

  // Méthode pour convertir un Map en Client
  static Client fromMap(Map<String, dynamic> map, String id) {
    return Client(
      id: id,
      name: map['name'],
      phone: map['phone'],
      address: map['address'],
      clientType: map['clientType'],
      mesure: Mesure.fromMap(map['mesure']), // Conversion du Map de Mesure
    );
  }
}

class Mesure {
  int cou;
  int epaule;
  int manches;
  int ceinture;
  int tourDeBas;
  int tourDeHanches;
  int tourDeCuisse;
  int longueurHaut;
  int longueurBas;
  int longueurBooubou;
  int? longueurJupe; // Champ optionnel pour les femmes
  int poitrine;
  int? tourDeTaille; // Champ optionnel pour les femmes
  int? longueurBras; // Champ optionnel
  int? longueurRobe; // Champ optionnel pour les femmes
  int? tourDeBras; // Champ optionnel pour les hommes

  Mesure({
    required this.cou,
    required this.epaule,
    required this.manches,
    required this.ceinture,
    required this.tourDeBas,
    required this.tourDeHanches,
    required this.tourDeCuisse,
    required this.longueurHaut,
    required this.longueurBas,
    required this.longueurBooubou,
    this.longueurJupe,
    required this.poitrine,
    this.tourDeTaille,
    this.longueurBras,
    this.longueurRobe,
    this.tourDeBras,
  });

  // Conversion en Map pour stockage Firebase
  Map<String, dynamic> toMap() {
    return {
      'cou': cou,
      'epaule': epaule,
      'manches': manches,
      'ceinture': ceinture,
      'tourDeBas': tourDeBas,
      'tourDeHanches': tourDeHanches,
      'tourDeCuisse': tourDeCuisse,
      'longueurHaut': longueurHaut,
      'longueurBas': longueurBas,
      'longueurBooubou': longueurBooubou,
      'longueurJupe': longueurJupe,
      'poitrine': poitrine,
      'tourDeTaille': tourDeTaille,
      'longueurBras': longueurBras,
      'longueurRobe': longueurRobe,
      'tourDeBras': tourDeBras,
    };
  }

  // Méthode pour convertir un Map en Mesure
  static Mesure fromMap(Map<String, dynamic> map) {
    return Mesure(
      cou: map['cou'],
      epaule: map['epaule'],
      manches: map['manches'],
      ceinture: map['ceinture'],
      tourDeBas: map['tourDeBas'],
      tourDeHanches: map['tourDeHanches'],
      tourDeCuisse: map['tourDeCuisse'],
      longueurHaut: map['longueurHaut'],
      longueurBas: map['longueurBas'],
      longueurBooubou: map['longueurBooubou'],
      longueurJupe: map['longueurJupe'],
      poitrine: map['poitrine'],
      tourDeTaille: map['tourDeTaille'],
      longueurBras: map['longueurBras'],
      longueurRobe: map['longueurRobe'],
      tourDeBras: map['tourDeBras'],
    );
  }
}
