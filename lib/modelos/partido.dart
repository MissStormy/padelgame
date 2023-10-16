import 'dart:io';
//Clase Partido
//Tendrá los siguientes métodos públicos (los privados son propios de vuestro análisis)
//  · addPuntoLocal() -> Añadiría un punto al partido para el jugador local, devolvería un bool (true)
//    si el partido ha finalizado y (false) si sigue jugandose
//  · addPuntoVisitante() -> Añadiría un punto al partido para el jugador visitante, devolvería un bool
//    (true) si el partido ha finalizado y (false) si sigue jugándose
//  · printPartido() -> nos imprimirá en pantalla el marcador actual del partido
//Un partido finaliza cuando uno de los dos jugadores han ganado la mitad + 1 de los sets del partido

class Partido {
  //Propiedades
  int puntoLocal = 0;
  int puntoVisitante = 0;
  bool? finalPartido = false;
  late String jugador1;
  late String jugador2;
  late int sets;


  //Constructores

  partido() {
    this.puntoLocal = puntoLocal;
    this.puntoVisitante = puntoVisitante;
    this.finalPartido = finalPartido;
    this.jugador1 = jugador1;
    this.jugador2 = jugador2;
    this.sets = sets;
  }

  //Metodos
  bool? addPuntoLocal() {
    puntoLocal += 1;

    if (puntoLocal == sets + 1) {
      finalPartido = true;
    } else {
      finalPartido = false;
    }

    return finalPartido;
  }

  bool? addPuntoVisitante() {
    puntoVisitante += 1;

    if (puntoVisitante == sets + 1) {
      finalPartido = true;
    } else {
      finalPartido = false;
    }
    return finalPartido;
  }

  void printPartido() {
    print("=====================");
    print("       PARTIDO       ");
    print("=====================");
    print("Jugador: " + jugador1 + "|" + puntoLocal.toString() + "|");
    print("Jugador: " + jugador2 + "|" + puntoVisitante.toString() + "|");
  }

  int get getPuntoLocal => this.puntoLocal;

  set setPuntoLocal(int puntoLocal) => this.puntoLocal = puntoLocal;

  get getPuntoVisitante => this.puntoVisitante;

  set setPuntoVisitante(puntoVisitante) => this.puntoVisitante = puntoVisitante;

  get getFinalPartido => this.finalPartido;

  set setFinalPartido(finalPartido) => this.finalPartido = finalPartido;

  get getJugador1 => this.jugador1;

  set setJugador1(jugador1) => this.jugador1 = jugador1;

  get getJugador2 => this.jugador2;

  set setJugador2(jugador2) => this.jugador2 = jugador2;

  get getSets => this.sets;

  set setSets(sets) => this.sets = sets;
}
