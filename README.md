# Proyecto de Base de Datos: Gestión Académica

**Autor:** Raúl Jaque

Este repositorio contiene la evidencia final para el módulo de Bases de Datos Relacionales. El proyecto simula un sistema de gestión escolar que administra estudiantes, cursos e inscripciones, demostrando el dominio de SQL y modelado de datos.

## 1. Fundamentos Teóricos (Componentes Básicos)

Para el desarrollo de este sistema, se han aplicado los conceptos fundamentales de las bases de datos relacionales:

* **Tablas:** Son los objetos principales donde se almacena la información estructurada. En este proyecto se utilizan las tablas `Estudiantes`, `Cursos` e `Inscripciones`.
* **Campos (Columnas):** Representan los atributos específicos de la información. Por ejemplo, el campo `email` en la tabla de estudiantes o `créditos` en cursos.
* **Registros (Filas):** Corresponden a cada entrada de datos individual dentro de una tabla (ej. un estudiante específico).
* **Clave Primaria (Primary Key - PK):** Es el identificador único para cada registro, asegurando que no existan duplicados (campo `id`).
* **Clave Foránea (Foreign Key - FK):** Son campos que crean la relación entre tablas. La tabla `Inscripciones` usa claves foráneas para vincular a un *Estudiante* con un *Curso*.

## 2. Estructura del Repositorio

El proyecto está organizado de la siguiente manera:

* **/docs**: Contiene el diagrama Entidad-Relación (ER) y la documentación detallada del modelo.
* **/sql**: Contiene los scripts SQL ordenados para su ejecución:
  * `01_crear_tablas.sql` (DDL)
  * `02_manipulacion_datos.sql` (DML)
  * `03_consultas_reportes.sql` (Consultas Complejas)

## 3. Tecnologías Utilizadas

* **Motor de Base de Datos:** MySQL / MariaDB
* **Lenguaje:** SQL (Estructurado, Manipulación y Definición de Datos)
* **Herramientas:** MySQL Workbench, Git/GitHub
