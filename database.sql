CREATE DATABASE SailorMoonDB;
USE SailorMoonDB;

-- Tabla de Peliculas
CREATE TABLE Peliculas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    descripcion TEXT,
    año INT,
    director VARCHAR(255),
    productor VARCHAR(255),
    id_formato INT
);

-- Tabla de Series
CREATE TABLE Series (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    descripcion TEXT,
    n_temporadas INT
);

-- Tabla de Mangas
CREATE TABLE Mangas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    descripcion TEXT,
    autor VARCHAR(255)
);

-- Tabla de Musicales
CREATE TABLE Musicales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    trama TEXT,
    año INT
);

-- Tabla de Personajes
CREATE TABLE Personajes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    edad INT,
    sexo VARCHAR(10),
    ocupacion VARCHAR(255),
    tipo_personaje INT,
    sailor_scouts BOOLEAN
);

-- Tabla de Videojuegos
CREATE TABLE Videojuegos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    año_publicacion INT,
    id_sistema INT
);

-- Tabla de Artbooks
CREATE TABLE Artbooks (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    año INT
);

-- Tabla de Actores
CREATE TABLE Actores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    nacionalidad VARCHAR(255),
    fecha_nacimiento DATE
);

-- Tabla de Transformaciones
CREATE TABLE Transformaciones (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    id_personaje INT
);

-- Tabla de Ataques
CREATE TABLE Ataques (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    id_personaje INT
);

-- Tabla de Canciones
CREATE TABLE Canciones (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    interprete VARCHAR(255),
    compositor VARCHAR(255)
);

-- Tabla de Temporadas
CREATE TABLE Temporadas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    n_episodios INT,
    fecha_emision DATE,
    fecha_finalizacion DATE,
    id_serie INT
);

-- Tabla de Episodios
CREATE TABLE Episodios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    fecha_emision DATE,
    id_temporada INT
);

-- Tabla de Objetos
CREATE TABLE Objetos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);

-- Tabla de Lugares
CREATE TABLE Lugares (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);

-- Tabla de Sistemas
CREATE TABLE Sistemas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);

-- Tabla de Apariciones
CREATE TABLE Apariciones (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_elemento INT,
    id_tipo_elemento INT,
    id_medio INT,
    id_tipo_medio INT
);

-- Tabla de Tipos_elementos
CREATE TABLE Tipos_elementos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);

-- Tabla de Tipos_medios
CREATE TABLE Tipos_medios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);

-- Tabla de Formato
CREATE TABLE Formato (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);
