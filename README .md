
# Proyecto de Base de Datos: Universo de Sailor Moon

## Descripción del Proyecto
Este proyecto tiene como objetivo diseñar y crear una base de datos relacional que capture y gestione información sobre diversos aspectos del universo de *Sailor Moon*. Esta base de datos está pensada para ser usada en una fan page, proporcionando una estructura clara y eficiente para almacenar y consultar datos relacionados con películas, series, mangas, personajes, transformaciones, ataques, videojuegos, artbooks, actores, y más.

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
- `personaje`: Clave foránea que referencia el personaje.

### Ataques
Contiene información sobre los ataques utilizados por los personajes, también vinculados a la tabla de Personajes.
- `nombre`: Nombre del ataque.
- `personaje`: Clave foránea que referencia el personaje.

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
- El archivo `dml.sql` incluye sentencias de inserción de datos en estas tablas, incluyendo personajes, episodios, películas, y más.

## Ejemplos de Consultas
Algunas consultas SQL que pueden ser útiles:
1. **Consultar todos los personajes que son Sailor Scouts**:
   ```sql
   SELECT nombre FROM Personajes WHERE sailor_scouts = TRUE;
   ```
2. **Consultar todas las películas dirigidas por un director específico**:
   ```sql
   SELECT nombre FROM Películas WHERE director = 'Nombre del Director';
   ```

3. **Consultar todas las transformaciones de un personaje específico**:
   ```sql
   SELECT nombre FROM Transformaciones WHERE personaje = (SELECT id FROM Personajes WHERE nombre = 'Sailor Moon');
   ```

---
