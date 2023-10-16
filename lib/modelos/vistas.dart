import 'dart:io';
import 'package:padelgame/modelos/partido.dart';

class Vistas {
  void cleanScreen() {
    print("\x1B[2J\x1B[0;0H"); //limpieza de pantalla
  }

  //Menu de entrada
  void mainMenu() {
    print("Bienvenido al maravilloso partido de padel");
    print("------------------------------------------");
    print("1. Configurar el partido");
    print("2. Iniciar el partido");
    print("3. Salir");
  }

  //Menu de entrada (elecciones)
  void choiceMainMenu(String? opcMM) {
    Vistas menus = new Vistas();

    switch (opcMM) {
      case "1":
        print("Configuración de partido");
        print("------------------------");
        print("1. Dale nombre a tus jugadores (opcional)");
        print("2. Elige el numero de sets (obligatorio)");
        print("3. Volver");
        int? num = stdin.readByteSync();
        if (num == 1) {
          print("Dale un nombre a tu jugador local");
          //jugador1 = stdin.readLineSync();
          print("Dale un nombre al jugador visitante");
          //jugador2 = stdin.readLineSync();
        } else if (num == 2) {
          print("Cuantos sets quieres?");
          //numSets = stdin.readByteSync();
        } else {
          menus.mainMenu();
        }
        break;
      case "2":
        menus.cleanScreen();
        Partido partido = new Partido();
        bool? finalPartido = false;
        print("Partido jugado por: " + partido.getJugador1 + " y " + partido.getJugador2);
        print("A " + partido.getSets.toString() + " sets");
        while (finalPartido != true) {
          String? opcP;
          menus.menuPartido();
          opcP = stdin.readLineSync();
          switch (opcP) {
            case "1":
              finalPartido = partido.addPuntoLocal();
              partido.printPartido();

            case "2":
              finalPartido = partido.addPuntoVisitante();
              partido.printPartido();
            case "3":
              print("¿Seguro que quiere terminar el partido? S/N");
              String? conf = stdin.readLineSync();
              if (conf == "S") {
                print("Bola de fuego!!");
                finalPartido = true;
              } else {
                print("Que prosiga el partido!!");
                finalPartido = false;
              }
          }
        }

      case "3":
        exit(1);
    }
  }

  //Una vez iniciado el juego, el menu que aparecera hasta el final
  void menuPartido() {
    print("¿Cual va a ser tu proximo movimiento?");
    print("1. Añadir punto local");
    print("2. Añadir punto visitante");
    print("3. Finalizar el partido");
  }
}
