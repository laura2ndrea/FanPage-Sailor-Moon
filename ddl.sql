-- Tablas principales
CREATE TABLE Peliculas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    descripcion TEXT,
    año INT,
    director VARCHAR(255),
    id_formato INT,
    FOREIGN KEY (id_formato) REFERENCES Formato(id)
);

CREATE TABLE Series (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    descripcion TEXT,
    n_temporadas INT
);

CREATE TABLE Mangas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    descripcion TEXT,
    autor VARCHAR(255)
);

CREATE TABLE Musicales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    trama TEXT,
    año INT
);

CREATE TABLE Personajes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    edad INT,
    sexo VARCHAR(10),
    ocupacion VARCHAR(255),
    tipo_personaje INT,
    sailor_scouts BOOLEAN,
    FOREIGN KEY (tipo_personaje) REFERENCES Tipo_personaje(id)
);

CREATE TABLE Videojuegos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    año_publicacion INT,
    id_sistema INT,
    FOREIGN KEY (id_sistema) REFERENCES Sistemas(id)
);

CREATE TABLE Artbooks (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    año INT
);

CREATE TABLE Actores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    nacionalidad VARCHAR(255),
    fecha_nacimiento DATE
);

CREATE TABLE Transformaciones (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    id_personaje INT,
    FOREIGN KEY (id_personaje) REFERENCES Personajes(id)
);

CREATE TABLE Ataques (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    id_personaje INT,
    FOREIGN KEY (id_personaje) REFERENCES Personajes(id)
);

-- Tablas secundarias
CREATE TABLE Actor_personaje (
    id_personaje INT,
    id_actor INT,
    PRIMARY KEY (id_personaje, id_actor),
    FOREIGN KEY (id_personaje) REFERENCES Personajes(id),
    FOREIGN KEY (id_actor) REFERENCES Actores(id)
);

CREATE TABLE Canciones (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    interprete VARCHAR(255),
    compositor VARCHAR(255)
);

CREATE TABLE Temporadas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    n_episodios INT,
    fecha_emision DATE,
    fecha_finalizacion DATE,
    id_serie INT,
    FOREIGN KEY (id_serie) REFERENCES Series(id)
);

CREATE TABLE Episodios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    fecha_emision DATE,
    id_temporada INT,
    FOREIGN KEY (id_temporada) REFERENCES Temporadas(id)
);

CREATE TABLE Tipo_personaje (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50)
);

CREATE TABLE Ediciones (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_manga INT,
    nombre VARCHAR(255),
    n_volumenes INT,
    FOREIGN KEY (id_manga) REFERENCES Mangas(id)
);

CREATE TABLE Volumenes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_edicion INT,
    nombre VARCHAR(255),
    n_actos INT,
    año INT,
    FOREIGN KEY (id_edicion) REFERENCES Ediciones(id)
);

CREATE TABLE Actos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    id_volumen INT,
    FOREIGN KEY (id_volumen) REFERENCES Volumenes(id)
);

CREATE TABLE Objetos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);

CREATE TABLE Lugares (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);

CREATE TABLE Sistemas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);

CREATE TABLE Apariciones (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_elemento INT,
    id_tipo_elemento INT,
    id_medio INT,
    id_tipo_medio INT
);

CREATE TABLE Tipos_elementos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);

CREATE TABLE Tipos_medios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);

CREATE TABLE Formato (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
)