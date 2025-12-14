# Documentación del Modelo de Datos - Gestión Académica

## Descripción del Modelo
Este proyecto utiliza una base de datos relacional diseñada para gestionar la información académica de una institución educativa. El modelo permite administrar estudiantes, cursos y el registro de inscripciones.

## Componentes Básicos Identificados

### 1. Tablas (Entidades)
Son los objetos donde se almacena la información estructurada.
* **Estudiantes:** Almacena la información personal de los alumnos.
* **Cursos:** Contiene el catálogo de materias disponibles.
* **Inscripciones:** Tabla relacional que vincula a estudiantes con cursos.

### 2. Campos (Columnas) y Registros (Filas)
* **Campos:** Atributos específicos como `nombre`, `email` o `créditos`.
* **Registros:** Cada fila representa un dato único, por ejemplo, el estudiante "Raúl Jaque".

### 3. Claves (Keys)
* **Clave Primaria (PK):** Utilizamos el campo `id` en todas las tablas como identificador único para asegurar que no haya duplicados (ej: cada estudiante tiene un ID único).
* **Clave Foránea (FK):** Se utilizan en la tabla `Inscripciones` (`estudiante_id` y `curso_id`) para crear la relación entre las tablas, asegurando la integridad referencial. Esto permite saber qué estudiante corresponde a qué inscripción.
