USE FanPageSailorMoon; 

-- 1. Listar todos los personajes con sus ocupaciones
SELECT E.nombre AS nombre_personaje, P.ocupacion 
FROM Personajes P
JOIN Elementos E ON P.id_elemento = E.id;  
-- Esta consulta muestra el nombre de cada personaje junto con su ocupación.

-- 2. Contar el número de episodios por cada serie.
SELECT M.nombre AS nombre_serie, COUNT(E.id) AS total_episodios 
FROM Episodios E
JOIN Temporadas T ON E.id_temporada = T.id  
JOIN Series S ON T.id_serie = S.id  
JOIN Medios M on S.id_medio = M.id
GROUP BY S.id;  
-- Aquí se cuenta cuántos episodios hay en cada serie, agrupando por el ID de la serie.

-- 3. Obtener la lista de películas y sus directores.
SELECT M.nombre as nombre_peliculas, P.director
FROM Medios M, Peliculas P
WHERE P.id_medio = M.id;
-- Esta consulta retorna el nombre de las películas junto con el nombre del director.

-- 4. Mostrar todos los ataques y el personaje que los usa.
SELECT E.nombre as nombre_ataque, E2.nombre as nombre_personaje
FROM Ataques A
JOIN Elementos E ON A.id_elemento = E.id
JOIN Personajes P ON A.id_personaje = P.id 
JOIN Elementos E2 ON P.id_elemento = E2.id;
-- Muestra el nombre de cada ataque y el personaje que lo utiliza.

-- 5. Listar las ediciones y su número de volúmenes.
SELECT nombre as nombre_edicion, n_volumenes as numero_volumenes
FROM Ediciones; 
-- Esta consulta lista cada edición y cuántos volúmenes contiene.

-- 6. Contar cuántos episodios hay en cada temporada.
SELECT M.nombre as nombre_serie, T.nombre as nombre_temporada, COUNT(E.id) AS total_episodios
FROM Episodios E
JOIN Temporadas T on E.id_temporada = T.id
JOIN Series S on T.id_serie = S.id
JOIN Medios M on S.id_medio = M.id
GROUP BY T.id; 
-- Aquí se cuenta el total de episodios por temporada y serie.

-- 7. Mostrar todos los actores y el número de personajes que interpretan.
SELECT A.nombre as nombre_actor, COUNT(DISTINCT AP.id_personaje, AP.id_actor) as numero_personajes
FROM Actores A, Actores_personajes AP 
WHERE AP.id_actor = A.id
GROUP BY A.id;
-- Esta consulta muestra el nombre de cada actor y cuántos personajes interpreta.

-- 8. Obtener las transformaciones de un personaje específico.
SELECT E.nombre AS transformacion, El.nombre AS personaje 
FROM Transformaciones T 
JOIN Elementos E ON T.id_elemento = E.id  
JOIN Personajes P ON T.id_personaje = P.id  
JOIN Elementos El ON P.id_elemento = El.id  
WHERE T.id_personaje = 4;  -- Sailor Moon
-- Muestra las transformaciones de un personaje específico (Sailor Moon).

-- 9. Obtener la lista de todos los personajes y las series en las que salen. 
SELECT E.nombre AS personaje, M.nombre AS serie 
FROM Apariciones A
JOIN Personajes P ON A.id_elemento = P.id_elemento  
JOIN Elementos E ON P.id_elemento = E.id  
JOIN Medios M ON A.id_medio = M.id  
WHERE M.id_tipo_medio = 4;  
-- Aquí se listan todos los personajes junto con las series donde aparecen.

-- 10. Obtener la lista del total de transformaciones hechas por cada personaje. 
SELECT E.nombre AS personaje, COUNT(T.id) AS total_transformaciones 
FROM Transformaciones T
JOIN Personajes P ON T.id_personaje = P.id
JOIN Elementos E ON P.id_elemento = E.id
GROUP BY T.id_personaje;
-- Muestra el total de transformaciones realizadas por cada personaje.

-- 11. Obtener todos los episodios emitidos en el año 2014 
SELECT nombre as episodio, emision
FROM Episodios 
WHERE YEAR(emision) = 2014;
-- Esta consulta devuelve todos los episodios que se emitieron en 2014.

-- 12. Listar los episodios de una temporada específica.
SELECT T.nombre as temporada, E.nombre as episodio, E.emision 
FROM Episodios E, Temporadas T
WHERE E.id_temporada = T.id AND id_temporada = 1; -- Temporada 1
-- Muestra los episodios de la primera temporada.

-- 13. Mostrar todos los videojuegos y su año de lanzamiento.
SELECT M.nombre as videojuego, V.anio as anio_lanzamiento 
FROM Medios M, Videojuegos V
WHERE V.id_medio = M.id; 
-- Lista todos los videojuegos junto con su año de lanzamiento.

-- 14. Mostrar las formas de un personaje especifico.
SELECT E1.nombre AS forma_personaje, E2.nombre AS forma_personaje
FROM Formas_personajes FP
JOIN Personajes P1 ON FP.id_personaje1 = P1.id
JOIN Elementos E1 ON P1.id_elemento = E1.id  
JOIN Personajes P2 ON FP.id_personaje2 = P2.id
JOIN Elementos E2 ON P2.id_elemento = E2.id  
WHERE FP.id_personaje1 = 2 OR FP.id_personaje2 = 2;  
-- Muestra las formas de un personaje específico, donde se relacionan con otro personaje.

-- 15. Mostrar los actos que contienen un volumen en especifico.
SELECT nombre as acto
FROM Actos
WHERE id_volumen = 2; 
-- Aquí se muestran todos los actos que pertenecen a un volumen específico.

-- 16. Listar todos los lugares relacionados con todas las peliculas
SELECT El.nombre AS lugar, M.nombre AS pelicula
FROM Apariciones A
JOIN Elementos El ON A.id_elemento = El.id 
JOIN Medios M ON A.id_medio = M.id  
WHERE M.id_tipo_medio = 5;  
-- Muestra todos los lugares que están relacionados con las películas.

-- 17. Mostrar la relación entre actores y personajes que interpretan.
SELECT A.nombre AS actor, E.nombre AS personaje
FROM Actores_personajes AP
JOIN Actores A ON AP.id_actor = A.id  
JOIN Personajes P ON AP.id_personaje = P.id 
JOIN Elementos E ON P.id_elemento = E.id ; 
-- Muestra la relación entre actores y los personajes que interpretan.

-- 18. Contar la cantidad de episodios en la serie de Live Action.
SELECT M.nombre AS serie, COUNT(E.id) AS total_episodios
FROM Episodios E
JOIN Temporadas T ON E.id_temporada = T.id  
JOIN Series S ON T.id_serie = S.id  
JOIN Medios M ON S.id_medio = M.id  
WHERE S.id_formato = 2  
GROUP BY M.nombre;  
-- Cuenta cuántos episodios hay en cada serie de Live Action.

-- 19. Listar todos los ataques y la cantidad de personajes que los usan.
SELECT E.nombre AS ataque, COUNT(A.id_personaje) AS total_personajes
FROM Ataques A
JOIN Elementos E ON A.id_elemento = E.id  
GROUP BY E.nombre;
-- Aquí se listan todos los ataques junto con el número de personajes que los utilizan.

-- 20. Mostrar el nombre y la fecha de estreno de los musicales.
SELECT M.nombre AS musical, MU.estreno
FROM Musicales MU
JOIN Medios M ON MU.id_medio = M.id;  
-- Muestra el nombre de cada musical junto con su fecha de estreno.

-- 21. Mostrar la cantidad total de personajes que aparecen en cada serie.
SELECT M.nombre AS serie, COUNT(DISTINCT A.id_elemento) AS total_personajes
FROM Series S
JOIN Medios M ON S.id_medio = M.id
JOIN Apariciones A ON S.id_medio = A.id_medio
WHERE M.id_tipo_medio = 4  
GROUP BY S.id;
-- Cuenta el número total de personajes que aparecen en cada serie.

-- 22. Listar todos los personajes que tienen más de un objeto.
SELECT E.nombre AS personaje, COUNT(O.id) AS total_objetos
FROM Objetos O
JOIN Personajes P ON O.id_personaje = P.id
JOIN Elementos E ON P.id_elemento = E.id
GROUP BY P.id
HAVING COUNT(O.id) > 1;
-- Muestra los personajes que tienen más de un objeto, junto con el conteo de objetos.

-- 23. Mostrar el nombre de los personajes que aparecen tanto en series como en películas.
SELECT DISTINCT E.nombre AS personaje
FROM Apariciones A
JOIN Personajes P ON A.id_elemento = P.id_elemento
JOIN Elementos E ON P.id_elemento = E.id
JOIN Medios M ON A.id_medio = M.id
WHERE M.id_tipo_medio = 4 OR M.id_tipo_medio = 5;  
-- Muestra los personajes que aparecen en al menos una serie y una película.

-- 24. Contar cuántos personajes principales y secundarios hay en cada serie.
SELECT M.nombre AS serie, TP.nombre AS tipo_personaje, COUNT(P.id) AS total_personajes
FROM Personajes P
JOIN Apariciones A ON P.id_elemento = A.id_elemento
JOIN Medios M ON A.id_medio = M.id
JOIN Tipos_personajes TP ON P.id_tipo_personaje = TP.id  
WHERE M.id_tipo_medio = 4  
GROUP BY M.nombre, TP.nombre;
-- Cuenta cuántos personajes principales y secundarios hay en cada serie.

-- 25.  Listar todos los personajes que aparecen en al menos una transformación y un ataque.
SELECT El.nombre AS personaje, Et.nombre AS transformacion, Ea.nombre AS ataque
FROM Personajes P
JOIN Transformaciones T ON P.id = T.id_personaje
JOIN Ataques A ON P.id = A.id_personaje
JOIN Elementos El ON P.id_elemento = El.id   
JOIN Elementos Et ON T.id_elemento = Et.id   
JOIN Elementos Ea ON A.id_elemento = Ea.id;
-- Muestra los personajes que tienen al menos una transformación y un ataque.

-- 26. Mostrar todos los personajes que aparecen en más de dos videojuegos.
SELECT E.nombre AS personaje, COUNT(A.id_medio) AS total_videojuegos
FROM Apariciones A
JOIN Personajes P ON A.id_elemento = P.id_elemento
JOIN Elementos E ON P.id_elemento = E.id
JOIN Medios M ON A.id_medio = M.id
WHERE M.id_tipo_medio = 1 
GROUP BY E.nombre
HAVING COUNT(A.id_medio) > 2;
-- Muestra los personajes que aparecen en más de dos videojuegos.

-- 27. Listar todos los episodios emitidos en un rango de fechas.
SELECT nombre, emision
FROM Episodios
WHERE emision BETWEEN '2010-01-01' AND '2015-12-31';
-- Muestra todos los episodios que fueron emitidos en el rango de fechas especificado.

-- 28. Mostrar todas las películas donde aparece un personaje específico.
SELECT M.nombre AS pelicula, E.nombre AS personaje
FROM Apariciones A
JOIN Medios M ON A.id_medio = M.id
JOIN Personajes P ON A.id_elemento = P.id_elemento
JOIN Elementos E ON P.id_elemento = E.id  
WHERE M.id_tipo_medio = 5 AND P.id = 4;  
-- Lista las películas en las que aparece un personaje específico.

-- 29. Mostrar las series que tienen más de 2 temporadas.
SELECT M.nombre AS serie, COUNT(T.id) AS total_temporadas
FROM Temporadas T
JOIN Series S ON T.id_serie = S.id
JOIN Medios M ON S.id_medio = M.id
GROUP BY S.id
HAVING COUNT(T.id) > 2;
-- Muestra las series que tienen más de 2 temporadas.

-- 30. Listar todas las ediciones que contienen más de 10 volúmenes.
SELECT nombre AS edicion, n_volumenes AS total_volumenes
FROM Ediciones
WHERE n_volumenes > 10;
-- Muestra todas las ediciones que tienen más de 10 volúmenes.

-- 31. Mostrar todas las Sailor Scouts. 
SELECT E.nombre AS nombre_personaje
FROM Personajes P
JOIN Elementos E ON P.id_elemento = E.id
WHERE P.sailor_scout = TRUE;  
-- Muestra todos los personajes que son Sailor Scouts.

-- 32. Listar todas las canciones que aparecen en los musicales.
SELECT E.nombre AS cancion, M.nombre AS musical
FROM Canciones C
JOIN Elementos E ON C.id_elemento = E.id 
JOIN Apariciones A ON C.id_elemento = A.id_elemento  
JOIN Medios M ON A.id_medio = M.id  
WHERE M.id_tipo_medio = 3;  
-- Muestra todas las canciones que aparecen en los musicales.

-- 33. Contar cuántos lugares hay en total.
SELECT COUNT(*) AS total_lugares
FROM Lugares;
-- Muestra el número total de lugares registrados.

-- 34. Mostrar todos los personajes y la cantidad de ataques que tienen.
SELECT E.nombre AS personaje, COUNT(A.id) AS total_ataques
FROM Personajes P
JOIN Ataques A ON P.id = A.id_personaje
JOIN Elementos E ON P.id_elemento = E.id
GROUP BY P.id;
-- Muestra todos los personajes junto con el número de ataques que poseen.

-- 35. Listar las ediciones y el año de publicación de su primer volumen.
SELECT Ed.nombre AS edicion, MIN(V.publicacion) AS primer_volumen
FROM Ediciones Ed
JOIN Volumenes V ON Ed.id = V.id_edicion
GROUP BY Ed.nombre;
-- Muestra cada edición y el año de publicación de su primer volumen.

-- 36.  Listar las temporadas y su duración en días.
SELECT T.nombre AS temporada, DATEDIFF(T.finalizacion, T.emision) AS duracion_dias
FROM Temporadas T;
-- Muestra el nombre de cada temporada y su duración en días.

-- 37. Calcular el promedio de episodios por temporada.
SELECT AVG(total_episodios) AS promedio_episodios_por_temporada
FROM (SELECT COUNT(E.id) AS total_episodios 
		FROM 
        Episodios E
		JOIN 
        Temporadas T ON E.id_temporada = T.id
		GROUP BY 
        T.id
		) AS episodios_por_temporada;
-- Muestra el promedio de episodios que hay por temporada.

-- 38. Obtener la serie que tiene la mayor cantidad de temporadas.
SELECT M.nombre AS serie, COUNT(T.id) AS total_temporadas
FROM Series S
JOIN Temporadas T ON S.id = T.id_serie
JOIN Medios M ON S.id_medio = M.id  -- Relación con la tabla Medios para obtener el nombre de la serie
GROUP BY M.id
ORDER BY total_temporadas DESC
LIMIT 1;
-- Muestra la serie que tiene la mayor cantidad de temporadas.

-- 39. Contar cuántas veces aparece un personaje en las apariciones.
SELECT E.nombre AS personaje, COUNT(*) AS total_apariciones
FROM Apariciones A
JOIN Personajes P ON A.id_elemento = P.id_elemento
JOIN Elementos E ON P.id_elemento = E.id
GROUP BY P.id;  
-- Cuenta cuántas veces aparece cada personaje en las apariciones registradas.

-- 40. Listar las películas estrenadas después del año 2000.
SELECT M.nombre AS pelicula, P.anio AS anio_estreno
FROM Peliculas P
JOIN Medios M ON P.id_medio = M.id
WHERE P.anio > 2000;  
-- Muestra todas las películas que se estrenaron después del año 2000.
