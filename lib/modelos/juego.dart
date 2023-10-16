/*Tendrá los siguientes métodos públicos (los privados son propios de vuestro análisis)
addPuntoLocal() -> Añadiría un punto al juego para el jugador local, devolvería un bool 
(true) si el juego ha finalizado y (false) si sigue jugandose
addPuntoVisitante() -> Añadiría un punto al juego para el jugador visitante, 
devolvería un bool (true) si el juego ha finalizado y (false) si sigue jugándose
getJuego () -> Devolverá un Map, con el resultado actual del juego. Dicho map tendrá 
los siguientes campos "Puntos locales" y "Puntos visitantes" que serán Strings con el 
resultado del juego en puntos.
Los juegos tienen como valores posibles 00, 15, 30, 40 y AV
Un luego acaba cuando se sobrepasan los 40 y se tiene una ventaja de 2 en orden, o sea, 
cuando llegamos a una situación de mas de 40 y el otro jugador tiene 30 o menos
Si los dos jugadores llegan a tener 40, (Deuce) en el siguiente punto uno de ellos se 
colocara en situación de ventaja AV. Si vuelve a ganar estando en ventaja finaliza el 
juego a su favor.
Si estando un jugador en situación de ventaja gana el otro jugador ambos vuelven a 
situación de 40-40 (deuce) y el juego sigue hasta que se ganen de dos
Recomendaría que estas situaciones las gestionéis con números, que sirvan como índices 
de un List que contenga los valores posibles de los puntos de un juego
*/ 

