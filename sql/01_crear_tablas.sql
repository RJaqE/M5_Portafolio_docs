-- -----------------------------------------------------
-- Archivo: 01_crear_tablas.sql
-- Descripción: Script DDL para la creación de la base de datos y sus tablas.
-- Autor: Raúl Jaque
-- -----------------------------------------------------

-- 1. Creación de la Base de Datos
-- Se crea el contenedor principal para el proyecto de gestión académica.
CREATE DATABASE IF NOT EXISTS gestion_academica;
USE gestion_academica;

-- 2. Creación de Tabla Independiente: Estudiantes
-- Almacena la información de los alumnos. 'id' es la Clave Primaria (PK).
CREATE TABLE Estudiantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    fecha_ingreso DATE
);

-- 3. Creación de Tabla Independiente: Cursos
-- Almacena el catálogo de materias. 'id' es la Clave Primaria (PK).
CREATE TABLE Cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL,
    creditos INT
);

-- 4. Creación de Tabla Relacional (Intermedia): Inscripciones
-- Esta tabla conecta Estudiantes con Cursos.
-- Utiliza Claves Foráneas (FK) para mantener la integridad referencial.
CREATE TABLE Inscripciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    estudiante_id INT,
    curso_id INT,
    fecha_inscripcion DATE,
    -- Definición de relaciones (Foreign Keys)
    FOREIGN KEY (estudiante_id) REFERENCES Estudiantes(id),
    FOREIGN KEY (curso_id) REFERENCES Cursos(id)
);