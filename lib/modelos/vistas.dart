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
  void choiceMainMenu(String? opcMM, Partido partido) {
    Vistas menus = new Vistas();
    
    switch (opcMM) {
      case "1":
        print("Configuración de partido");
        print("------------------------");

        print("Dale un nombre a tu jugador local");
        partido.jugador1 = (stdin.readLineSync() ?? "Firulais");
        print("Dale un nombre al jugador visitante");
        partido.jugador2 = (stdin.readLineSync() ?? "Agapito");
        print(partido.jugador1 + " " + partido.jugador2);
        print("Cuantos sets quieres?");
        partido.sets = (stdin.readByteSync());


        break;
      case "2":
        menus.cleanScreen();

        bool? finalPartido = false;
        print("Partido jugado por: " +
            partido.getJugador1 +
            " y " +
            partido.getJugador2);
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
