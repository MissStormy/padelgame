//Clase GameSet
//Tendrá los siguientes métodos públicos (los privados son propios de vuestro análisis)
//  · addPuntoLocal() -> Añadiría un punto al sert para el jugador local, devolvería un bool (true) 
//    si el set ha finalizado y (false) si sigue jugandose
//  · addPuntoVisitante() -> Añadiría un punto al set para el jugador visitante, devolvería un bool 
//    (true) si el set ha finalizado y (false) si sigue jugándose
//  · getGameSet () -> Devolverá un Map, con el resultado actual del set. Dicho map tendrá los siguientes 
//    campos "Juegos locales", "Juegos visitantes", "Puntos locales" y "Puntos visitantes" que serán Strings 
//    con el resultado del set, tanto en juegos como en puntos.
//Un set finaliza cuando uno de los dos jugadores llega a 6 juegos con 2 de ventaja o cuando llega a 7 con dos juegos de ventaja o cuando gana un tiebreak