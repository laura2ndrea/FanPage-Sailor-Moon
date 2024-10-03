# FAN PAGE SAILOR MOON

## Tabla de Contenido

| Índice | Título |
|--|--|
| 1. | [Descripción](#descripcion) |
| 2. | [Requisitos del Sistema](#requisitos-del-sistema) |
| 3. | [Tablas Principales](#tablas-principales) |
| 4. | [Tablas Secundarias](#tablas-secundarias) |
| 5. | [Esquema DDL y DML](#esquema-ddl-y-dml) |
| 6. | [Ejemplos de Consultas](#ejemplos-de-consultas) |
| 7. | [Estructura de la Base de Datos](#estructura-de-la-base-de-datos) |
| 8. | [Instalación y Uso](#instalacion-y-uso) |
| 9. | [Autores](#autores) |

## Descripción del Proyecto

Este proyecto tiene como objetivo diseñar y crear una base de datos relacional que capture y gestione información sobre diversos aspectos del universo de *Sailor Moon*. Está pensado para ser utilizado en una fan page, proporcionando una estructura clara y eficiente para almacenar y consultar datos relacionados con películas, series, mangas, personajes, transformaciones, ataques, videojuegos, artbooks, actores y más.

La base de datos también manejará relaciones complejas entre estos elementos a través de tablas secundarias.

## Requisitos del Sistema

- **Base de datos**: MySQL (recomendado) u otro sistema de gestión de bases de datos relacionales.
- **Lenguaje**: SQL para la definición y manipulación de los datos.
- **Herramientas adicionales**: Recomendable utilizar herramientas como MySQL Workbench para la gestión y el diseño visual de la base de datos.

## Tablas Principales

### Películas
Almacena información sobre las películas de *Sailor Moon*.
- `nombre`: Nombre de la película.
- `descripción`: Descripción de la trama.
- `año`: Año de lanzamiento.
- `director`: Nombre del director.
- `id_formato`: Clave foránea que referencia el formato de la película.

### Series
Contiene información sobre las series de *Sailor Moon* (anime o live-action).
- `nombre`: Nombre de la serie.
- `descripción`: Descripción de la trama.
- `n_temporadas`: Número de temporadas que tiene la serie.

### Mangas
Almacena información relacionada con los mangas de *Sailor Moon*.
- `nombre`: Nombre del manga.
- `descripción`: Descripción de la trama.
- `autor`: Autor del manga.

### Musicales
Registra datos sobre los musicales basados en *Sailor Moon*.
- `nombre`: Nombre del musical.
- `trama`: Breve descripción de la trama.
- `año`: Año del musical.

### Personajes
Contiene los datos de los personajes que aparecen en *Sailor Moon*.
- `nombre`: Nombre del personaje.
- `edad`: Edad del personaje.
- `sexo`: Sexo del personaje.
- `ocupación`: Ocupación del personaje.
- `tipo_personaje`: Clave foránea que define si el personaje es protagonista, antagonista o secundario.
- `sailor_scouts`: Booleano que indica si el personaje es una Sailor Scout.

### Videojuegos
Almacena información sobre los videojuegos de *Sailor Moon*.
- `nombre`: Nombre del videojuego.
- `año_publicacion`: Año de publicación.
- `sistema`: Clave foránea que referencia las plataformas en las que está disponible el juego.

### Artbooks
Incluye información sobre los artbooks de *Sailor Moon*.
- `nombre`: Nombre del artbook.
- `año`: Año de publicación.

### Actores
Almacena datos de los actores que han participado en las diferentes producciones de *Sailor Moon*.
- `nombre`: Nombre del actor.
- `nacionalidad`: Nacionalidad del actor.
- `fecha_nacimiento`: Fecha de nacimiento del actor.

### Transformaciones
Registra información sobre las transformaciones de los personajes, vinculadas a la tabla de Personajes.
- `nombre`: Nombre de la transformación.
- `personaje`: Clave foránea que referencia al personaje.

### Ataques
Contiene información sobre los ataques utilizados por los personajes, también vinculados a la tabla de Personajes.
- `nombre`: Nombre del ataque.
- `personaje`: Clave foránea que referencia al personaje.

## Tablas Secundarias

### Actor_personaje
Relaciona a los actores con los personajes que interpretan.
- `id_personaje`: Clave foránea que referencia a un personaje.
- `id_actor`: Clave foránea que referencia a un actor.

### Canciones
Almacena datos sobre las canciones presentes en series, películas o musicales.
- `nombre`: Nombre de la canción.
- `interprete`: Persona que interpreta la canción.
- `compositor`: Persona que compuso la canción.

### Temporadas
Registra detalles de las temporadas de las series, vinculadas a la tabla de Series.
- `nombre`: Nombre de la temporada.
- `n_episodios`: Número de episodios de la temporada.
- `fecha_emision`: Fecha de inicio de la emisión.
- `fecha_finalizacion`: Fecha en la que terminó la temporada.
- `serie`: Clave foránea que referencia a la serie.

### Episodios
Contiene información sobre los episodios de la serie, relacionados con la tabla Temporadas.
- `nombre`: Nombre del episodio.
- `fecha_emision`: Fecha de emisión del episodio.
- `temporada`: Clave foránea que referencia a la temporada.

### Tipo_personaje
Define el tipo de personaje (protagonista, antagonista o secundario), vinculado a la tabla de Personajes.
- `nombre`: Tipo de personaje (por ejemplo, protagonista, antagonista).

### Ediciones
Almacena información sobre las ediciones de los mangas, relacionada con la tabla Mangas.
- `manga`: Clave foránea que referencia al manga.
- `nombre`: Nombre de la edición.
- `n_volumenes`: Número de volúmenes que contiene la edición.

### Volúmenes
Contiene información sobre los volúmenes pertenecientes a una edición, relacionados con la tabla Ediciones.
- `edicion`: Clave foránea que referencia a la edición.
- `nombre`: Nombre del volumen.
- `n_actos`: Número de actos que contiene el volumen.
- `año`: Año de publicación del volumen.

### Actos
Registra detalles de los actos dentro de los volúmenes, vinculados a la tabla Volúmenes.
- `nombre`: Nombre del acto.
- `volumen`: Clave foránea que referencia al volumen.

### Objetos
Almacena información sobre los objetos importantes dentro del universo de *Sailor Moon*.
- `nombre`: Nombre del objeto.

### Lugares
Contiene detalles sobre los lugares que aparecen en el universo de *Sailor Moon*.
- `nombre`: Nombre del lugar.

### Sistemas
Almacena las plataformas de los videojuegos.
- `nombre`: Nombre de la plataforma (PlayStation, Nintendo, etc.).

### Apariciones
Registra las apariciones de personajes, objetos, lugares, canciones, transformaciones y ataques en cada medio.
- `id_elemento`: Clave foránea que referencia a un elemento (personaje, objeto, lugar, etc.).
- `id_tipo_elemento`: Clave foránea que referencia al tipo de elemento.
- `id_medio`: Clave foránea que referencia al medio (película, serie, videojuego, manga, musical).
- `id_tipo_medio`: Clave foránea que referencia al tipo de medio.

### Tipos_elementos
Define los distintos tipos de elementos (personaje, objeto, lugar, etc.).
- `nombre`: Nombre del tipo de elemento.

### Tipos_medios
Define los distintos tipos de medios en los que aparecen los elementos (película, serie, videojuego, manga, musical).
- `nombre`: Nombre del tipo de medio.

### Formato
Define los formatos de las películas.
- `nombre`: Nombre del formato (DVD, Blu-Ray, etc.).

## Esquema DDL y DML

- El archivo `ddl.sql` contiene las sentencias SQL para crear las tablas principales y secundarias mencionadas anteriormente.
- El archivo `dml.sql` incluye sentencias de inserción de datos en estas tablas, incluyendo personajes, episodios, películas y más.
## Estructura de la Base de Datos

El diseño de la base de datos se compone de tablas principales y tablas secundarias, que gestionan las relaciones entre los diferentes elementos.

### Tablas Principales

- **Películas**: Almacena los detalles de las películas de Sailor Moon, incluyendo el nombre, año de lanzamiento, director y formato.
- **Series**: Contiene información sobre las series (anime o live-action), incluyendo el número de temporadas.
- **Mangas**: Registra los mangas, el autor y las ediciones correspondientes.
- **Musicales**: Guarda información sobre los musicales, su trama y año de lanzamiento.
- **Personajes**: Almacena detalles sobre los personajes, incluyendo edad, sexo, ocupación y tipo de personaje (protagonista, antagonista, secundario).
- **Videojuegos**: Almacena datos sobre los videojuegos de Sailor Moon y los sistemas (plataformas) donde se pueden jugar.
- **Artbooks**: Contiene información sobre los artbooks relacionados con Sailor Moon.
- **Actores**: Registra los actores que han interpretado a los personajes, incluyendo su nacionalidad y fecha de nacimiento.
- **Transformaciones**: Registra las transformaciones de los personajes, vinculadas a la tabla `Personajes`.
- **Ataques**: Contiene información sobre los ataques utilizados por los personajes.

### Tablas Secundarias

- **Actor_personaje**: Relaciona los actores con los personajes que interpretan.
- **Canciones**: Almacena datos sobre las canciones presentes en series, películas o musicales.
- **Temporadas**: Registra detalles de las temporadas de las series, vinculadas a la tabla `Series`.
- **Episodios**: Contiene información sobre los episodios de la serie, relacionados con la tabla `Temporadas`.
- **Tipo_personaje**: Define el tipo de personaje (protagonista, antagonista o secundario).
- **Ediciones (manga)**: Almacena información sobre las ediciones de los mangas, relacionada con la tabla `Mangas`.
- **Volúmenes (manga)**: Contiene información sobre los volúmenes pertenecientes a una edición, relacionados con la tabla `Ediciones`.
- **Actos (manga)**: Registra detalles de los actos dentro de los volúmenes, vinculados a la tabla `Volúmenes`.
- **Objetos**: Almacena información sobre los objetos importantes dentro del universo de Sailor Moon.
- **Lugares**: Contiene detalles sobre los lugares que aparecen en el universo de Sailor Moon.
- **Sistemas**: Registra las plataformas en las que los videojuegos de Sailor Moon están disponibles.
- **Apariciones**: Registra las apariciones de personajes, objetos, lugares, canciones, transformaciones y ataques en cada medio (películas, series, videojuegos, mangas, musicales).

### Relaciones Entre Tablas

Las tablas están interconectadas mediante claves foráneas que permiten gestionar las relaciones entre personajes, actores, transformaciones, y medios en los que aparecen, como películas, series, y mangas. Algunas de las relaciones más importantes son:

- La relación entre `Personajes` y `Actores` está gestionada por la tabla intermedia `Actor_personaje`.
- Las `Transformaciones` y `Ataques` están vinculados directamente con la tabla de `Personajes`.
- La tabla `Apariciones` juega un papel clave al registrar en qué medios (películas, series, mangas, videojuegos, musicales) aparecen los personajes, objetos, lugares, transformaciones o ataques.
- La tabla `Sistemas` está relacionada con los `Videojuegos` para especificar en qué plataformas se pueden jugar.

## Diagrama ERD

![Diagrama ERD](FanPage%20Sailor%20Moon.jpg)

## Instalación y Uso

1. Clona este repositorio:  
   ```
   git clone (https://github.com/laura2ndrea/FanPage-Sailor-Moon.git)
   ```

2. Carga los archivos SQL en tu sistema de gestión de bases de datos para crear las tablas y poblarlas con los datos iniciales. Asegúrate de ejecutar primero el archivo `ddl.sql` para crear las tablas y luego el archivo `dml.sql` para insertar los datos.
   
3. Verifica que todas las relaciones están correctamente establecidas revisando las claves foráneas en tu sistema de gestión de base de datos.

## Archivos

- `ddl.sql`: Archivo de definición de la base de datos. Contiene las sentencias SQL para la creación de tablas y relaciones.
- `dml.sql`: Archivo que contiene sentencias SQL para la inserción de datos iniciales en las tablas.
- `README.md`: Archivo con la documentación del proyecto.

