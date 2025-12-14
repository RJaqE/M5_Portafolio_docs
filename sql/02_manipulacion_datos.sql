-- -----------------------------------------------------
-- Archivo: 02_manipulacion_datos.sql
-- Descripción: Scripts DML para insertar, modificar y eliminar datos.
-- Autor: Raúl Jaque
-- -----------------------------------------------------
-- DESACTIVAR EL MODO SEGURO TEMPORALMENTE
SET SQL_SAFE_UPDATES = 0;

USE gestion_academica;
-- Seleccionar la base de datos
USE gestion_academica;

-- 1. INSERT: Poblar la base de datos con información inicial
-- Insertamos estudiantes
INSERT INTO Estudiantes (nombre, email, fecha_ingreso) VALUES 
('Raúl Jaque', 'raul.jaque@email.com', '2025-01-15'),
('María Gonzalez', 'maria.g@email.com', '2025-02-01'),
('Juan Pérez', 'juan.perez@email.com', '2025-02-10');

-- Insertamos cursos
INSERT INTO Cursos (nombre_curso, creditos) VALUES 
('Desarrollo Web Full Stack Python', 120),
('Base de Datos Relacionales', 60),
('Front-End con Vue.js', 80);

-- Insertamos inscripciones (Relacionamos estudiantes con cursos)
-- Raúl (ID 1) se inscribe en Python (ID 1)
INSERT INTO Inscripciones (estudiante_id, curso_id, fecha_inscripcion) VALUES (1, 1, CURDATE());

-- Raúl (ID 1) se inscribe en Base de Datos (ID 2)
INSERT INTO Inscripciones (estudiante_id, curso_id, fecha_inscripcion) VALUES (1, 2, CURDATE());

-- María (ID 2) se inscribe en Vue.js (ID 3)
INSERT INTO Inscripciones (estudiante_id, curso_id, fecha_inscripcion) VALUES (2, 3, '2025-03-01');


-- 2. UPDATE: Modificación de datos existentes
-- Caso: Raúl actualiza su correo electrónico personal
UPDATE Estudiantes 
SET email = 'raul.dev@nuevoemail.com' 
WHERE nombre = 'Raúl Jaque';

-- Caso: Se ajustan los créditos del curso de Base de Datos
UPDATE Cursos 
SET creditos = 65 
WHERE nombre_curso = 'Base de Datos Relacionales';


-- 3. DELETE: Eliminación de datos
-- Caso: Un estudiante cancela una inscripción (eliminamos la relación, no al estudiante)
-- Eliminamos la inscripción del estudiante ID 2 (María) en el curso ID 3
DELETE FROM Inscripciones 
WHERE estudiante_id = 2 AND curso_id = 3;

-- REACTIVAR EL MODO SEGURO
SET SQL_SAFE_UPDATES = 1;