-- -----------------------------------------------------
-- Archivo: 03_consultas_reportes.sql
-- Descripción: Consultas complejas (JOIN, GROUP BY) para reportes.
-- Autor: Raúl Jaque
-- -----------------------------------------------------

USE gestion_academica;

-- -----------------------------------------------------
-- CONSULTA 1: Uso de JOIN y WHERE
-- Objetivo: Obtener la lista de estudiantes inscritos en 'Desarrollo Web Full Stack Python'
-- Explicación: Se unen las tres tablas para ver nombre de alumno y curso.
-- -----------------------------------------------------
SELECT 
    e.nombre AS 'Nombre Estudiante',
    e.email AS 'Contacto',
    c.nombre_curso AS 'Curso',
    i.fecha_inscripcion AS 'Fecha Inscripción'
FROM Estudiantes e
JOIN Inscripciones i ON e.id = i.estudiante_id
JOIN Cursos c ON c.id = i.curso_id
WHERE c.nombre_curso = 'Desarrollo Web Full Stack Python'
ORDER BY i.fecha_inscripcion DESC;


-- -----------------------------------------------------
-- CONSULTA 2: Uso de GROUP BY y COUNT
-- Objetivo: Contar cuántos estudiantes hay inscritos por cada curso.
-- Explicación: Se agrupa por nombre de curso y contamos los registros.
-- -----------------------------------------------------
SELECT 
    c.nombre_curso AS 'Curso',
    COUNT(i.estudiante_id) AS 'Total Alumnos'
FROM Cursos c
LEFT JOIN Inscripciones i ON c.id = i.curso_id
GROUP BY c.nombre_curso
ORDER BY 'Total Alumnos' DESC;


-- -----------------------------------------------------
-- CONSULTA 3: Filtros de Fechas
-- Objetivo: Ver inscripciones realizadas solo en el mes actual.
-- -----------------------------------------------------
SELECT * FROM Inscripciones 
WHERE MONTH(fecha_inscripcion) = MONTH(CURRENT_DATE())
AND YEAR(fecha_inscripcion) = YEAR(CURRENT_DATE());