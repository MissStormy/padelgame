import 'dart:io';

import 'package:padelgame/modelos/vistas.dart';
import 'package:padelgame/modelos/partido.dart';

void main(List<String> args) {
  //Instancias
  Vistas menus = new Vistas();
  Partido partido = new Partido();
  //Valores
  String? opcMM;
  //Programa
  menus.cleanScreen();

  while (opcMM != "3") {
    menus.mainMenu(); 
    opcMM = stdin.readLineSync();
    menus.choiceMainMenu(opcMM, partido);
  }
}





