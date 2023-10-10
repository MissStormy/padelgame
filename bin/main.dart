import 'dart:io';


void main(List<String> args) {
  String? opc;
  print("\x1B[2J\x1B[0;0H"); //limpieza de pantalla

  while (opc != "3") {
    menu();
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
          menu();
          opc = stdin.readLineSync();
        }
    }
  }
}


  int? menu() {
    print("Bienvenido al maravilloso partido de padel");
    print("¿Cual va a ser tu proximo movimiento?");
    print("1. Añadir punto local");
    print("2. Añadir punto visitante");
    print("3. Finalizar el partido");
    
  }

