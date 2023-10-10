import 'dart:io';

void main(List<String> args) {
  String? opc;
  String? jugador1 = "Firulais";
  String? jugador2 = "Agapito Di Sousa";
  int? numSets;
  print("\x1B[2J\x1B[0;0H"); //limpieza de pantalla

  while (opc != "3") {
    mainMenu();
    opc = stdin.readLineSync();
    switch (opc) {
      case "1":
        print("Configuración de partido");
        print("------------------------");
        print("1. Dale nombre a tus jugadores (opcional)");
        print("2. Elige el numero de sets (obligatorio)");
        print("3. Volver");
        int? num = stdin.readByteSync();
        if (num == 1) {
          print("Dale un nombre a tu jugador local");
          jugador1 = stdin.readLineSync();
          print("Dale un nombre al jugador visitante");
          jugador2 = stdin.readLineSync();
        } else if (num == 2) {
          print("Cuantos sets quieres?");
          numSets = stdin.readByteSync();
        } else {
          mainMenu();
        }
        break;
      case "2":
        menuPartido();
        opc = stdin.readLineSync();
        cargaPartido(opc);
      case "3":
        exit(1);
    }
  }
}

void menuPartido() {
  print("¿Cual va a ser tu proximo movimiento?");
  print("1. Añadir punto local");
  print("2. Añadir punto visitante");
  print("3. Finalizar el partido");
}

void cargaPartido(opc) {
  while (opc != "3") {
    menuPartido();
    opc = stdin.readLineSync();

    switch (opc) {
      case "1":
        print("Punto para el equipo local!!!");
        break;
      case "2":
        print("Punto para el equipo visitante!!");
        break;
      case "3":
        print("¿Estas seguro de que quieres terminarlo? S/N");
        String? confirmacion = stdin.readLineSync();
        if (confirmacion == "S") {
          print(
              "Invoco bola de fuego!! El partido ha terminado con 0 jugadores vivos");
          opc = "3";
          break;
        } else {
          print("Ya sabia yo... Que continue el partido!!!");
          menuPartido();
          opc = stdin.readLineSync();
        }
      default:
        print("Ah, veo que no sabes contar...");
        menuPartido();
        opc = stdin.readLineSync();
    }
  }
}

void mainMenu() {
  print("Bienvenido al maravilloso partido de padel");
  print("------------------------------------------");
  print("1. Configurar el partido");
  print("2. Iniciar el partido");
  print("3. Salir");
}
