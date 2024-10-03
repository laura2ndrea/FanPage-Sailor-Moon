CREATE DATABASE IF NOT EXISTS FanPageSailorMoon; 

USE FanPageSailorMoon; 

CREATE TABLE Tipos_elementos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL UNIQUE
);

CREATE TABLE Elementos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL,
    id_tipo_elemento INT,
    FOREIGN KEY (id_tipo_elemento) REFERENCES Tipos_elementos(id)
);

CREATE TABLE Tipos_medios (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL UNIQUE
);

CREATE TABLE Medios (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL,
    descripcion VARCHAR(200),
    id_tipo_medio INT,
    FOREIGN KEY (id_tipo_medio) REFERENCES Tipos_medios(id)
);

CREATE TABLE Apariciones (
	id_elemento INT,
    id_medio INT,
    PRIMARY KEY (id_elemento, id_medio),
    FOREIGN KEY (id_elemento) REFERENCES Elementos(id),
    FOREIGN KEY (id_medio) REFERENCES Medios(id)
);

CREATE TABLE Canciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    interprete VARCHAR(200),
    compositor VARCHAR(200),
    id_elemento INT,
    FOREIGN KEY (id_elemento) REFERENCES Elementos(id)
);

CREATE TABLE Lugares (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_elemento INT,
    FOREIGN KEY (id_elemento) REFERENCES Elementos(id)
);

CREATE TABLE Tipos_personajes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL UNIQUE
);

CREATE TABLE Sexos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL UNIQUE
);

CREATE TABLE Personajes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    edad INT,
    ocupacion VARCHAR(200),
    sailor_scout BOOLEAN NOT NULL, 
    id_sexo INT,
    id_tipo_personaje INT,
    id_elemento INT,
	FOREIGN KEY (id_sexo) REFERENCES Sexos(id),
    FOREIGN KEY (id_tipo_personaje) REFERENCES Tipos_personajes(id),
    FOREIGN KEY (id_elemento) REFERENCES Elementos(id)
);

CREATE TABLE Transformaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_personaje INT,
    id_elemento INT,
	FOREIGN KEY (id_personaje) REFERENCES Personajes(id),
    FOREIGN KEY (id_elemento) REFERENCES Elementos(id)
);

CREATE TABLE Objetos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_personaje INT,
    id_elemento INT,
	FOREIGN KEY (id_personaje) REFERENCES Personajes(id),
    FOREIGN KEY (id_elemento) REFERENCES Elementos(id)
);

CREATE TABLE Ataques (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_personaje INT,
    id_elemento INT,
	FOREIGN KEY (id_personaje) REFERENCES Personajes(id),
    FOREIGN KEY (id_elemento) REFERENCES Elementos(id)
);

CREATE TABLE Formas_personajes (
    id_personaje1 INT,
    id_personaje2 INT,
    PRIMARY KEY (id_personaje1, id_personaje2), 
	FOREIGN KEY (id_personaje1) REFERENCES Personajes(id),
    FOREIGN KEY (id_personaje2) REFERENCES Personajes(id)
);

CREATE TABLE Actores (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL,
    nacimiento DATE
);

CREATE TABLE Actores_personajes (
	id_personaje INT,
    id_actor INT,
    PRIMARY KEY (id_personaje, id_actor),
    FOREIGN KEY (id_personaje) REFERENCES Personajes(id),
    FOREIGN KEY (id_actor) REFERENCES Actores(id)
);

CREATE TABLE Sistemas (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL UNIQUE
);

CREATE TABLE Videojuegos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    anio INT,
    id_sistema INT,
    id_medio INT, 
    FOREIGN KEY (id_sistema) REFERENCES Sistemas(id),
    FOREIGN KEY (id_medio) REFERENCES Medios(id)
);

CREATE TABLE Mangas (
	id INT AUTO_INCREMENT PRIMARY KEY,
    autor VARCHAR(200) NOT NULL,
    id_medio INT, 
    FOREIGN KEY (id_medio) REFERENCES Medios(id)
);

CREATE TABLE Ediciones (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL UNIQUE,
    n_volumenes INT, 
    id_manga INT, 
    FOREIGN KEY (id_manga) REFERENCES Mangas(id)
);

CREATE TABLE Volumenes (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL,
    n_actos INT, 
    publicacion DATE,
    id_edicion INT, 
    FOREIGN KEY (id_edicion) REFERENCES Ediciones(id)
);

CREATE TABLE Actos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL,
    id_volumen INT, 
    FOREIGN KEY (id_volumen) REFERENCES Volumenes(id)
);

CREATE TABLE Musicales (
	id INT AUTO_INCREMENT PRIMARY KEY,
    estreno DATE,
    id_medio INT, 
    FOREIGN KEY (id_medio) REFERENCES Medios(id)
);

CREATE TABLE Formatos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL UNIQUE
);

CREATE TABLE Series (
	id INT AUTO_INCREMENT PRIMARY KEY,
    n_temporadas INT,
    emision DATE,
    finalizacion DATE,
    id_formato INT, 
    id_medio INT,
    FOREIGN KEY (id_formato) REFERENCES Formatos(id),
    FOREIGN KEY (id_medio) REFERENCES Medios(id)
);

CREATE TABLE Temporadas (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL,
    emision DATE,
    finalizacion DATE,
    id_serie INT, 
    FOREIGN KEY (id_serie) REFERENCES Series(id)
);

CREATE TABLE Episodios (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL,
    emision DATE,
    id_temporada INT, 
    FOREIGN KEY (id_temporada) REFERENCES Temporadas(id)
);

CREATE TABLE Peliculas (
	id INT AUTO_INCREMENT PRIMARY KEY,
    anio INT,
    director VARCHAR(200),
    id_formato INT,
    id_medio INT, 
    FOREIGN KEY (id_formato) REFERENCES Formatos(id),
    FOREIGN KEY (id_medio) REFERENCES Medios(id)
);
    