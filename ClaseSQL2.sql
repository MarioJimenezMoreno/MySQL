/* CREATE DATABASE mario_jm; -- Crear database // o CREATE SCHEMA mario_jm; 
DROP DATABASE mario_jm; -- Borrar database de forma global */
DROP DATABASE IF EXISTS mario_jm; -- Borrar database solo si existe
CREATE DATABASE IF NOT EXISTS mario_jm; -- Crear database si no existe

USE mario_jm;
CREATE TABLE IF NOT EXISTS personajes (
id_personaje INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(45),
apellido VARCHAR(45),
dni VARCHAR(10) NOT NULL,
fecha_nacimiento DATE,
residencia VARCHAR(45) DEFAULT "España"
);
-- SELECT * FROM mario_jm.personajes;
-- SHOW COLUMNS FROM personajes;
INSERT INTO personajes VALUES (NULL,"ALBERTO","CHICOTE","45128683S","1997-12-26",DEFAULT);
INSERT INTO personajes VALUES (NULL,"PENELOPE","CRUZ","45228683S","1996-12-29",DEFAULT);

INSERT INTO personajes(nombre,apellido,dni) VALUES 
("ELVIS","PRESLEY","45328683S"),("JOAQUIN","PHOENIX","45428683S");
SELECT * FROM mario_jm.personajes;