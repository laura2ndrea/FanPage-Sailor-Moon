--Obtener todas las películas junto con sus formatos.
SELECT p.nombre AS pelicula, p.descripcion, p.año, f.nombre AS formato
FROM Peliculas p
JOIN Formato f ON p.id_formato = f.id;


--Obtener todas las series junto con el número de temporadas.


SELECT s.nombre AS serie, s.descripcion, s.n_temporadas
FROM Series s;


--Obtener todos los personajes y sus ocupaciones.


SELECT p.nombre AS personaje, p.ocupacion
FROM Personajes p;

--Obtener todos los ataques junto con el nombre del personaje.


SELECT a.nombre AS ataque, p.nombre AS personaje
FROM Ataques a
JOIN Personajes p ON a.id_personaje = p.id;

--Obtener todos los ataques de Sailor Moon con su descripción.


SELECT a.nombre AS ataque
FROM Ataques a
JOIN Personajes p ON a.id_personaje = p.id
WHERE p.nombre = 'Usagi Tsukino';

--Obtener todos los videojuegos y su respectivo sistema.


SELECT v.nombre AS videojuego, s.nombre AS sistema
FROM Videojuegos v
JOIN Sistemas s ON v.id_sistema = s.id;

--Obtener todos los musicales y su año de producción.


SELECT m.nombre AS musical, m.año
FROM Musicales m;

--Obtener todos los personajes que son guerreras Sailor junto con sus transformaciones.


SELECT p.nombre AS personaje, t.nombre AS transformacion
FROM Personajes p
JOIN Transformaciones t ON p.id = t.id_personaje
WHERE p.sailor_scouts = TRUE;

--Obtener todos los artbooks y el año de publicación.


SELECT a.nombre AS artbook, a.año
FROM Artbooks a;

--Obtener todos los actores junto con los personajes que han interpretado.


SELECT a.nombre AS actor, p.nombre AS personaje
FROM Actores a
LEFT JOIN Actor_personaje ap ON a.id = ap.id_actor
LEFT JOIN Personajes p ON ap.id_personaje = p.id;

--Obtener la trama de todos los musicales junto con su año de producción.


SELECT m.nombre AS musical, m.trama, m.año
FROM Musicales m;

--Obtener los detalles de cada transformación junto con el nombre del personaje.


SELECT t.nombre AS transformacion, p.nombre AS personaje
FROM Transformaciones t
JOIN Personajes p ON t.id_personaje = p.id;

--Obtener los ataques de Sailor Mars y su descripción.


SELECT a.nombre AS ataque
FROM Ataques a
JOIN Personajes p ON a.id_personaje = p.id
WHERE p.nombre = 'Rei Hino';

--Obtener todos los personajes junto con sus edades y ocupaciones.


SELECT p.nombre AS personaje, p.edad, p.ocupacion
FROM Personajes p;

--Obtener la información de las temporadas junto con el nombre de la serie.


SELECT t.nombre AS temporada, s.nombre AS serie
FROM Temporadas t
JOIN Series s ON t.id_serie = s.id;

--Obtener todos los episodios junto con la temporada a la que pertenecen.


SELECT e.nombre AS episodio, t.nombre AS temporada
FROM Episodios e
JOIN Temporadas t ON e.id_temporada = t.id;

--Obtener los nombres de los personajes junto con sus ataques.


SELECT p.nombre AS personaje, a.nombre AS ataque
FROM Personajes p
LEFT JOIN Ataques a ON p.id = a.id_personaje;

--Obtener todos los personajes y el número de ataques que tienen.


SELECT p.nombre AS personaje, COUNT(a.id) AS numero_de_ataques
FROM Personajes p
LEFT JOIN Ataques a ON p.id = a.id_personaje
GROUP BY p.id;

--Obtener la lista de personajes que son guerreras junto con sus transformaciones.


SELECT p.nombre AS personaje, t.nombre AS transformacion
FROM Personajes p
JOIN Transformaciones t ON p.id = t.id_personaje
WHERE p.sailor_scouts = TRUE;

--Obtener todos los sistemas de videojuegos y sus respectivos videojuegos.


SELECT s.nombre AS sistema, v.nombre AS videojuego
FROM Sistemas s
JOIN Videojuegos v ON s.id = v.id_sistema;

--Obtener el nombre y año de todos los artbooks junto con su descripción.


SELECT a.nombre AS artbook, a.año
FROM Artbooks a;

--Obtener los detalles de las películas y su director.


SELECT p.nombre AS pelicula, p.director
FROM Peliculas p;

--Obtener los nombres de todos los personajes y sus ocupaciones.


SELECT nombre, ocupacion FROM Personajes;

--Obtener el total de ataques que tiene cada personaje.


SELECT p.nombre AS personaje, COUNT(a.id) AS total_ataques
FROM Personajes p
LEFT JOIN Ataques a ON p.id = a.id_personaje
GROUP BY p.id;

--Obtener todos los episodios de la serie Sailor Moon.


SELECT e.nombre AS episodio, t.nombre AS temporada
FROM Episodios e
JOIN Temporadas t ON e.id_temporada = t.id;

--Obtener todas las canciones y sus intérpretes.


SELECT c.nombre AS cancion, c.interprete
FROM Canciones c;

--Obtener todos los personajes que han sido interpretados por Kotono Mitsuishi.


SELECT p.nombre AS personaje
FROM Personajes p
JOIN Actores a ON p.id = a.id
WHERE a.nombre = 'Kotono Mitsuishi';

--Obtener las transformaciones de todos los personajes.


SELECT p.nombre AS personaje, t.nombre AS transformacion
FROM Transformaciones t
JOIN Personajes p ON t.id_personaje = p.id;

--Obtener todos los personajes y sus respectivos videojuegos.


SELECT p.nombre AS personaje, v.nombre AS videojuego
FROM Personajes p
LEFT JOIN Videojuegos v ON p.id = v.id_sistema;

--Obtener todos los musicales y sus tramas.


SELECT m.nombre AS musical, m.trama
FROM Musicales m;

--Obtener los ataques de Sailor Jupiter.


SELECT a.nombre AS ataque
FROM Ataques a
JOIN Personajes p ON a.id_personaje = p.id
WHERE p.nombre = 'Makoto Kino';

--Obtener la trama de cada película.


SELECT p.nombre AS pelicula, p.descripcion
FROM Peliculas p;

--Obtener el número de personajes que son guerreras.


SELECT COUNT(*) FROM Personajes WHERE sailor_scouts = TRUE;

--Obtener todos los personajes junto con sus ataques y transformaciones.


SELECT p.nombre AS personaje, a.nombre AS ataque, t.nombre AS transformacion
FROM Personajes p
LEFT JOIN Ataques a ON p.id = a.id_personaje
LEFT JOIN Transformaciones t ON p.id = t.id_personaje;

--Obtener todos los personajes y su fecha de nacimiento.


SELECT p.nombre AS personaje, a.fecha_nacimiento
FROM Actores a
JOIN Personajes p ON a.id = p.id;

--Obtener todos los sistemas y el número de videojuegos disponibles para cada uno.


SELECT s.nombre AS sistema, COUNT(v.id) AS numero_de_videojuegos
FROM Sistemas s
LEFT JOIN Videojuegos v ON s.id = v.id_sistema
GROUP BY s.id;

--Obtener los actores de voz junto con sus personajes.


SELECT a.nombre AS actor, p.nombre AS personaje
FROM Actores a
JOIN Actor_personaje ap ON a.id = ap.id_actor
JOIN Personajes p ON ap.id_personaje = p.id;

--Obtener todos los artbooks y su año de publicación.


SELECT a.nombre AS artbook, a.año
FROM Artbooks a;

--Obtener todos los episodios de Sailor Moon y la temporada a la que pertenecen.


SELECT e.nombre AS episodio, t.nombre AS temporada
FROM Episodios e
JOIN Temporadas t ON e.id_temporada = t.id;

--Obtener todos los personajes junto con sus transformaciones y ataques.


SELECT p.nombre AS personaje, t.nombre AS transformacion, a.nombre AS ataque
FROM Personajes p
LEFT JOIN Transformaciones t ON p.id = t.id_personaje
LEFT JOIN Ataques a ON p.id = a.id_personaje;
