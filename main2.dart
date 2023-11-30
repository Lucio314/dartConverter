import 'dart:io';
import 'dart:math';

double conversionTemperature(
    double temperature, String uniteDepart, String uniteDestination) {
  if (uniteDepart == uniteDestination) {
    return temperature;
  }

  switch (uniteDepart) {
    case 'C':
      return conversionCelsius(temperature, uniteDestination);
    case 'F':
      return conversionFahrenheit(temperature, uniteDestination);
    case 'K':
      return conversionKelvin(temperature, uniteDestination);
    default:
      print("Unité de conversion non valide.");
      return 0;
  }
}

double conversionCelsius(double celsius, String uniteDestination) {
  switch (uniteDestination) {
    case 'F':
      return (celsius * 9 / 5) + 32;
    case 'K':
      return celsius + 273.15;
    default:
      print("Unité de conversion non valide.");
      return 0;
  }
}

double conversionFahrenheit(double fahrenheit, String uniteDestination) {
  switch (uniteDestination) {
    case 'C':
      return (fahrenheit - 32) * 5 / 9;
    case 'K':
      return (fahrenheit - 32) * 5 / 9 + 273.15;
    default:
      print("Unité de conversion non valide.");
      return 0;
  }
}

double conversionKelvin(double kelvin, String uniteDestination) {
  switch (uniteDestination) {
    case 'C':
      return kelvin - 273.15;
    case 'F':
      return (kelvin - 273.15) * 9 / 5 + 32;
    default:
      print("Unité de conversion non valide.");
      return 0;
  }
}

double conversion(
    {required double valeur,
    required String uniteDepart,
    required String uniteDestination}) {
  List<String>? unitesDeMesure;
  unitesDeMesure = <String>[
    'kg',
    'hg',
    'dag',
    'g',
    'dg',
    'cg',
    'mg',
    'km',
    'hm',
    'dam',
    'm',
    'dm',
    'cm',
    'mm',
    'kl',
    'hl',
    'dal',
    'l',
    'dl',
    'cl',
    'ml'
  ];
  if (uniteDepart == uniteDestination) {
    return valeur;
  } else {
    return valeur *
        pow(
            10,
            (unitesDeMesure.indexOf(uniteDestination) -
                unitesDeMesure.indexOf(uniteDepart)));
  }
}

void fcfa(double price) {
  bool verify = false;
  final double priceDollard = 0.001524;
  final double priceEuro = 0.001673;
  final double priceLivre = 0.001318;
  do {
    print('Vers quelle devise voulez-vous effectuer la conversion ?\n');
    print("1-Dollard 2-Euro 3-Livre\n");
    String? input = stdin.readLineSync();
    int choice = int.parse(input ?? '');

    if (choice == 1) {
      double priceConvert = price * priceDollard;
      print('$price FCFA = $priceConvert \$');
      verify = true;
    } else if (choice == 2) {
      double priceConvert = price * priceEuro;
      print('$price FCFA = $priceConvert Euro');
      verify = true;
    } else if (choice == 3) {
      double priceConvert = price * priceLivre;
      print('$price FCFA = $priceConvert £');
      verify = true;
    } else {
      print('Choix invalide, veuillez recommencer !!! \n');
      verify = false;
    }
  } while (verify == false);
}

void dollard(double price) {
  bool verify = false;
  final double priceFcfa = 597.7516;
  final double priceEuro = 0.9113;
  final double priceLivre = 0.7877;
  do {
    print('Vers quelle devise voulez-vous effectuer la conversion ?\n');
    print("1-FCFA 2-Euro 3-Livre\n");
    String? input = stdin.readLineSync();
    int choice = int.parse(input ?? '');

    if (choice == 1) {
      double priceConvert = price * priceFcfa;
      print('$price \$ = $priceConvert FCFA');
      verify = true;
    } else if (choice == 2) {
      double priceConvert = price * priceEuro;
      print('$price \$ = $priceConvert Euro');
      verify = true;
    } else if (choice == 3) {
      double priceConvert = price * priceLivre;
      print('$price \$ = $priceConvert £');
      verify = true;
    } else {
      print('Choix invalide, veuillez recommencer !!! \n');
      verify = false;
    }
  } while (verify == false);
}

void euro(double price) {
  bool verify = false;
  final double priceFcfa = 655.957;
  final double priceDollard = 1.0974;
  final double priceLivre = 0.8644;
  do {
    print('Vers quelle devise voulez-vous effectuer la conversion ?\n');
    print("1-FCFA 2-Dollard 3-Livre\n");
    String? input = stdin.readLineSync();
    int choice = int.parse(input ?? '');

    if (choice == 1) {
      double priceConvert = price * priceFcfa;
      print('$price Euro = $priceConvert FCFA');
      verify = true;
    } else if (choice == 2) {
      double priceConvert = price * priceDollard;
      print('$price Euro = $priceConvert \$');
      verify = true;
    } else if (choice == 3) {
      double priceConvert = price * priceLivre;
      print('$price Euro = $priceConvert £');
      verify = true;
    } else {
      print('Choix invalide, veuillez recommencer !!! \n');
      verify = false;
    }
  } while (verify == false);
}

void livre(double price) {
  bool verify = false;
  final double priceFcfa = 758.8408;
  final double priceDollard = 1.2695;
  final double priceEuro = 1.1569;
  do {
    print('Vers quelle devise voulez-vous effectuer la conversion ?\n');
    print("1-FCFA 2-Dollard 3-Euro\n");
    String? input = stdin.readLineSync();
    int choice = int.parse(input ?? '');

    if (choice == 1) {
      double priceConvert = price * priceFcfa;
      print('$price £ = $priceConvert FCFA');
      verify = true;
    } else if (choice == 2) {
      double priceConvert = price * priceDollard;
      print('$price £ = $priceConvert \$');
      verify = true;
    } else if (choice == 3) {
      double priceConvert = price * priceEuro;
      print('$price £ = $priceConvert Euro');
      verify = true;
    } else {
      print('Choix invalide, veuillez recommencer !!! \n');
      verify = false;
    }
  } while (verify == false);
}

void convertDevises() {
  print('Conversion Devises\n');
  bool verify = false;
  bool veriCon = false;
  do {
    print('Quelle monnaie voulez-vous convertir ?\n');
    print('1:FCFA 2:Dollard 3:Euro 4:Livre \n');
    String? devise = stdin.readLineSync();
    int choice = int.parse(devise ?? '');
    print('Entrez le montant\n');
    if (choice == 1) {
      double price = double.parse(stdin.readLineSync() ?? '');
      fcfa(price);
    } else if (choice == 2) {
      double price = double.parse(stdin.readLineSync() ?? '');
      dollard(price);
    } else if (choice == 3) {
      double price = double.parse(stdin.readLineSync() ?? '');
      euro(price);
    } else if (choice == 4) {
      double price = double.parse(stdin.readLineSync() ?? '');
      livre(price);
    } else {
      print('Choix Invalide');
    }

    print('Conversion reussie ! ! !');

    do {
      print('Voulez-vous effectuer une autre conversion (Y/N)  ?');
      String? next = stdin.readLineSync();
      if (next == 'Y' || next == 'y') {
        veriCon = true;
        verify = false;
      } else if (next == 'N' || next == 'n') {
        verify = true;
        break;
      }
    } while (veriCon == false);
  } while (verify == false);
}

void main() {
  String? choix = '';
  List<String> unitesDeLongueur;
  unitesDeLongueur = <String>['kg', 'hg', 'dag', 'g', 'dg', 'cg', 'mg'];
  List<String> unitesDeMasse;
  unitesDeMasse = <String>['km', 'hm', 'dam', 'm', 'dm', 'cm', 'mm'];
  List<String> unitesDeCapacites;
  unitesDeCapacites = <String>['kl', 'hl', 'dal', 'l', 'dl', 'cl', 'ml'];
  while (choix != '0') {
    print("Bienvenue dans le convertisseur !");
    print("Choisissez le type de conversion :");
    print("1. Conversion d'unités de mesure");
    print("2. Conversion de température");
    print("3. Conversion de devises");
    print("0. Quitter");
    print("Entrez le numéro correspondant à votre choix :");

    choix = stdin.readLineSync();

    if (choix == '1') {
      print("Conversion d'unités de mesure choisie.");
      print("Entrez la valeur à convertir :");
      double valeur = 0;
      bool valeurValide = false;
      bool conversionValide = false;
      while (!conversionValide) {
        while (!valeurValide) {
          print("Entrez un nombre  :");

          String? input = stdin.readLineSync();
          if (input != null) {
            try {
              valeur = double.parse(input);
              valeurValide = true;
            } catch (e) {
              print("La valeur entrée n'est pas valide !");
              valeurValide = false;
            }
          } else {
            print("Entrée non valide. Veuillez réessayer :");
            valeurValide = false;
          }
        }
        print("Entrez l'unité de départ :");
        String uniteDepart = '';
        bool uniteDepartValide = false;

        while (!uniteDepartValide) {
          uniteDepart = (stdin.readLineSync() ?? '').toLowerCase();
          if (unitesDeLongueur.contains(uniteDepart) ||
              unitesDeMasse.contains(uniteDepart) ||
              unitesDeCapacites.contains(uniteDepart)) {
            uniteDepartValide = true;
          } else {
            print("Unité de départ non valide. Veuillez réessayer :");
          }
        }

        print("Entrez l'unité de destination :");
        String uniteDestination = '';
        bool uniteDestinationValide = false;

        while (!uniteDestinationValide) {
          uniteDestination = (stdin.readLineSync() ?? '').toLowerCase();
          if (unitesDeLongueur.contains(uniteDepart) ||
              unitesDeMasse.contains(uniteDepart) ||
              unitesDeCapacites.contains(uniteDepart)) {
            uniteDestinationValide = true;
          } else {
            print("Unité de destination non valide. Veuillez réessayer :");
          }
        }
        if ((unitesDeLongueur.contains(uniteDepart) &&
                unitesDeLongueur.contains(uniteDestination)) ||
            (unitesDeMasse.contains(uniteDepart) &&
                unitesDeMasse.contains(uniteDestination)) ||
            (unitesDeCapacites.contains(uniteDepart) &&
                unitesDeCapacites.contains(uniteDestination))) {
          conversionValide = true;
        } else {
          print("Unités de conversion non valides. Veuillez réessayer :");
        }
        double resultat = conversion(
            valeur: valeur,
            uniteDepart: uniteDepart,
            uniteDestination: uniteDestination);

        print("$valeur $uniteDepart équivaut à $resultat $uniteDestination");
      }
    } else if (choix == '2') {
      print("Conversion de température choisie.");
      print("Entrez la température à convertir :");
      double temperature = 0;
      try {
        temperature = double.parse(stdin.readLineSync() ?? '0');
      } catch (e) {
        print("La température entrée n'est pas valide !");
        return;
      }

      print("Entrez l'unité de température de départ (C, F, K) :");
      String uniteDepart = (stdin.readLineSync() ?? '').toUpperCase();

      print("Entrez l'unité de température de destination (C, F, K) :");
      String uniteDestination = (stdin.readLineSync() ?? '').toUpperCase();

      double resultat =
          conversionTemperature(temperature, uniteDepart, uniteDestination);

      print("$temperature $uniteDepart équivaut à $resultat $uniteDestination");
    } else if (choix == '0') {
      print("Au revoir");
    } else if (choix == '3') {
      convertDevises();
    } else {
      print("Choix non valide.");
    }
  }
}
