--Obtener todas las películas.
SELECT * FROM Peliculas;

--Obtener todas las series.
SELECT * FROM Series;

--Obtener todos los mangas.
SELECT * FROM Mangas;

--Obtener todos los personajes.
SELECT * FROM Personajes;

--Obtener todos los videojuegos.
SELECT * FROM Videojuegos;

--Obtener todos los musicales.
SELECT * FROM Musicales;

--Obtener todos los artbooks.
SELECT * FROM Artbooks;

--Obtener todos los actores.
SELECT * FROM Actores;

--Obtener todas las transformaciones de Usagi Tsukino.
SELECT * FROM Transformaciones WHERE id_personaje = 1;

--Obtener todos los ataques de Sailor Moon.
SELECT * FROM Ataques WHERE id_personaje = 1;

--Obtener la cantidad de temporadas de cada serie.
SELECT nombre, n_temporadas FROM Series;

--Obtener las películas y sus directores.
SELECT nombre, director FROM Peliculas;

--Obtener los personajes y sus ocupaciones.
SELECT nombre, ocupacion FROM Personajes;

--Obtener los mangas y sus autores.
SELECT nombre, autor FROM Mangas;

--Obtener el número total de videojuegos publicados.
SELECT COUNT(*) FROM Videojuegos;

--Obtener todos los ataques de Sailor Mercury.
SELECT * FROM Ataques WHERE id_personaje = 2;

--Obtener la lista de actores que interpretaron a Sailor Moon en diferentes adaptaciones.
SELECT nombre FROM Actores WHERE nombre LIKE '%Usagi Tsukino%';

--Obtener todos los títulos de los artbooks publicados en 1994.
SELECT nombre FROM Artbooks WHERE año = 1994;

--Obtener las transformaciones de Ami Mizuno (Sailor Mercury).
SELECT * FROM Transformaciones WHERE id_personaje = 2;

--Obtener la trama de cada musical.
SELECT nombre, trama FROM Musicales;

--Obtener todos los personajes que son guerreras Sailor.
SELECT nombre FROM Personajes WHERE sailor_scouts = TRUE;

--Obtener todas las canciones y sus intérpretes.
SELECT nombre, interprete FROM Canciones;

--Obtener todos los videojuegos para el sistema Super Nintendo.
SELECT * FROM Videojuegos WHERE id_sistema = 1;

--Obtener todos los ataques de Sailor Mars.
SELECT * FROM Ataques WHERE id_personaje = 3;

--Contar cuántas películas se han producido hasta el 2023.
SELECT COUNT(*) FROM Peliculas WHERE año <= 2023;

--Obtener la información de todos los personajes por edad.
SELECT nombre, edad FROM Personajes ORDER BY edad;

--Obtener todos los títulos de mangas publicados por Naoko Takeuchi.
SELECT nombre FROM Mangas WHERE autor = 'Naoko Takeuchi';

--Obtener las fechas de emisión de todas las temporadas de Sailor Moon.
SELECT nombre, fecha_emision FROM Temporadas;

--Obtener los nombres de los actores que han interpretado a Chibiusa.
SELECT nombre FROM Actores WHERE nombre LIKE '%Chibiusa%';

--Obtener los nombres de las transformaciones de Sailor Jupiter.
SELECT nombre FROM Transformaciones WHERE id_personaje = 4;

--Obtener la descripción de la película 'Sailor Moon Eternal'.
SELECT descripcion FROM Peliculas WHERE nombre = 'Sailor Moon Eternal';

--Obtener los años en que se publicaron los artbooks.
SELECT DISTINCT año FROM Artbooks;

--Obtener la lista de los musicales en orden cronológico.
SELECT nombre, año FROM Musicales ORDER BY año;

--Obtener el número de ataques que tiene cada personaje.
SELECT p.nombre, COUNT(a.id) AS numero_de_ataques
FROM Personajes p
LEFT JOIN Ataques a ON p.id = a.id_personaje
GROUP BY p.id;

--Obtener los detalles de los videojuegos publicados en 1995.
SELECT * FROM Videojuegos WHERE año_publicacion = 1995;

--Obtener la lista de todos los personajes con su tipo.
SELECT nombre, tipo_personaje FROM Personajes;

--Obtener el total de artbooks publicados hasta ahora.
SELECT COUNT(*) FROM Artbooks;

--Obtener los nombres de las canciones que tienen como intérprete a Anza Ooyama.
SELECT nombre FROM Canciones WHERE interprete = 'Anza Ooyama';

--Obtener todas las transformaciones y ataques de un personaje específico.
SELECT t.nombre AS transformacion, a.nombre AS ataque
FROM Transformaciones t
JOIN Ataques a ON t.id_personaje = a.id_personaje
WHERE t.id_personaje = 1;

--Obtener todos los personajes que son estudiantes.
SELECT nombre FROM Personajes WHERE ocupacion LIKE '%Estudiante%';
