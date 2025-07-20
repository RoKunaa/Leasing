-- Crear las bases de datos
CREATE DATABASE IF NOT EXISTS BD_LEASING 
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE BD_LEASING;

-- Crear la tabla de los beneficiados
CREATE TABLE IF NOT EXISTS beneficiados (
  id INT AUTO_INCREMENT PRIMARY KEY,
  Rut VARCHAR(12) NOT NULL UNIQUE,
  Nombres VARCHAR(100),
  Apellido_Paterno VARCHAR(100),
  Apellido_Materno VARCHAR(100),
  Emplazamiento VARCHAR(100),
  Postulacion YEAR
);

-- Importa los datos de. '.csv'
LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/bdd2024.csv'
INTO TABLE beneficiados
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Rut, Nombres, Apellido_Paterno, Apellido_Materno, Emplazamiento, Postulacion);