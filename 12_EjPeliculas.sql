DROP DATABASE IF EXISTS ej12_tablas;
CREATE DATABASE IF NOT EXISTS ej12_tablas;

USE ej12_tablas;

CREATE TABLE movies (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100),
year INT,
image_url VARCHAR(255),
certificate VARCHAR(45),
runtime INT,
imdb_rating FLOAT,
description TEXT,
metascore INT,
votes INT,
gross INT
);

CREATE TABLE IF NOT EXISTS directors(
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(45),
about TEXT
);

CREATE TABLE IF NOT EXISTS stars(
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
name VARCHAR (45),
about TEXT
);

CREATE TABLE IF NOT EXISTS genres(
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(45)
);

CREATE TABLE IF NOT EXISTS movies_directors(
movies_id INT UNSIGNED,
directors_id INT UNSIGNED,
PRIMARY KEY (movies_id, directors_id),
FOREIGN KEY (movies_id) REFERENCES movies(id),
FOREIGN KEY (directors_id) REFERENCES directors(id)
);
CREATE TABLE IF NOT EXISTS movies_stars(
movies_id INT UNSIGNED,
stars_id INT UNSIGNED,
PRIMARY KEY (movies_id, stars_id),
FOREIGN KEY (movies_id) REFERENCES movies(id),
FOREIGN KEY (stars_id) REFERENCES stars(id)
);
CREATE TABLE IF NOT EXISTS movies_genres(
movies_id INT UNSIGNED,
genres_id INT UNSIGNED,
PRIMARY KEY (movies_id, genres_id),
FOREIGN KEY (movies_id) REFERENCES movies(id),
FOREIGN KEY (genres_id) REFERENCES genres(id)
);

INSERT INTO movies (title,year,image_url,certificate,runtime,imdb_rating,description,metascore,votes,gross) VALUES
("Insidious 2", 2013, "https://www.imdb.com/title/tt2226417/mediaviewer/rm1258412544/?ref_=tt_ov_i", 16, 106, 6.5, 
"Los Lambert creen que han derrotado a los espíritus que han perseguido a su familia,
pero pronto descubren que el mal no es tan fácil de vencer.", 40, 178000, 161919318 ),
("Inception",2010,"https://www.imdb.com/title/tt1375666/mediaviewer/rm2598950144/?ref_=tt_ov_i", 13, 148,
8.8, "Un ladrón especializado en el robo de secretos corporativos mediante la infiltración
en los sueños de las personas, acepta un último trabajo para volver a su vida normal.", 74, 2051437, 828322032),
("The Shawshank Redemption",1994,"https://www.imdb.com/title/tt0111161/mediaviewer/rm3096364800/?ref_=tt_ov_i", 16, 142, 9.3,
 "Dos hombres encuentran la redención en la cárcel, en un lugar donde los sueños pueden ser tan peligrosos como la misma institución.",
 80, 2446545, 58500000),
("Pulp Fiction", 1994, "https://www.imdb.com/title/tt0110912/mediaviewer/rm3876825600/?ref_=tt_ov_i", 18, 154, 8.9,
 "La vida de dos asesinos a sueldo, un boxeador, un gánster y su esposa se entrelazan en una serie de violentos incidentes.",
 94, 1910361, 107928762),
("The Dark Knight", 2008, "https://www.imdb.com/title/tt0468569/mediaviewer/rm3625451776/?ref_=tt_ov_i", 13, 152, 9.0,
"Cuando Batman, Gordon y Harvey Dent unen sus fuerzas, Gotham City se enfrenta a un psicópata criminal conocido como 'El Joker'.",
84, 2329774, 534858444),
("Fight Club", 1999, "https://www.imdb.com/title/tt0137523/mediaviewer/rm4159270656/?ref_=tt_ov_i", 18, 139, 8.8,
 "Un empleado de oficina insomne y un vendedor de jabón buscan la liberación de la opresión cotidiana formando un 
 club de lucha clandestino.", 66, 1935925, 37030102),
("Forrest Gump", 1994, "https://www.imdb.com/title/tt0109830/mediaviewer/rm3462302976/?ref_=tt_ov_i", 13, 142, 8.8,
"La vida de Forrest Gump, un hombre con un coeficiente intelectual bajo, quien participa en eventos históricos y 
logra grandes cosas a pesar de todo.", 82, 1858266, 330455270),
("The Matrix", 1999, "https://www.imdb.com/title/tt0133093/mediaviewer/rm398379392/?ref_=tt_ov_i", 13, 136, 8.7,
"Un hacker descubre la verdad sobre la realidad y su papel en la lucha contra las máquinas que controlan a la humanidad.",
73, 1724997, 171479930),
("Interstellar", 2014, "https://www.imdb.com/title/tt0816692/mediaviewer/rm1345832448/?ref_=tt_ov_i", 13, 169, 8.6,
 "Un grupo de exploradores espaciales viaja a través de un agujero de gusano en busca de un nuevo hogar para la humanidad.",
 74, 1552760, 188017894),
("The Godfather", 1972, "https://www.imdb.com/title/tt0068646/mediaviewer/rm3229231872/?ref_=tt_ov_i", 16, 175, 9.2,
"El patriarca de una poderosa familia de la mafia transfiere el control de su imperio clandestino a su hijo más joven.",
100, 1623540, 134966411);

INSERT INTO directors (name,about) VALUES
("James Wan", "Director de cine conocido por sus películas de terror."),
("Frank Darabont", "Director y guionista famoso por sus películas dramáticas y de prisión."),
("Quentin Tarantino", "Director y guionista reconocido por su estilo único y sus películas de diálogos intensos."),
("David Fincher", "Director conocido por sus películas oscuras y psicológicas."),
("Robert Zemeckis", "Director famoso por sus películas llenas de imaginación y emoción."),
("Lana Wachowski", "Directora y guionista conocida por su trabajo en películas de ciencia ficción y acción."),
("Christopher Nolan", "Director y guionista aclamado por sus películas de ciencia ficción y acción."),
("Francis Ford Coppola", "Director y guionista icónico en la industria cinematográfica.");

INSERT INTO stars (name,about) VALUES
("Patrick Wilson", "Actor versátil que ha trabajado en películas de diversos géneros."),
("Leonardo DiCaprio", "Actor aclamado que ha protagonizado numerosas películas de éxito."),
("Tim Robbins", "Actor conocido por sus papeles en películas dramáticas y de prisión."),
("John Travolta", "Actor icónico que ha protagonizado películas de acción y crimen."),
("Christian Bale", "Actor reconocido por su versatilidad y sus papeles en películas de superhéroes."),
("Brad Pitt", "Actor famoso por sus interpretaciones en películas de acción y drama."),
("Tom Hanks", "Actor querido por su carisma y sus papeles en películas emotivas."),
("Keanu Reeves", "Actor conocido por su papel en películas de ciencia ficción y acción."),
("Matthew McConaughey", "Actor versátil que ha protagonizado películas de diferentes géneros."),
("Marlon Brando", "Actor legendario que ha dejado una huella en la historia del cine.");

INSERT INTO genres (name) VALUES
("Terror"), ("Acción"), ("Drama"), ("Crimen"), ("Ciencia ficción");

INSERT INTO movies_genres (movies_id,genres_id) VALUES
(1, 1), (2, 4), (3, 3), (4, 4), (5, 2), (6, 3), (7, 3), (8, 2), (9, 5), (10, 4);

INSERT INTO movies_directors (movies_id,directors_id) VALUES
(1, 1), (2, 7), (3, 2), (4, 3), (5, 7), (6, 4), (7, 5), (8, 6), (9, 7), (10, 8);

INSERT INTO movies_stars (movies_id,stars_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

DELETE FROM movies_genres;
DELETE FROM movies_directors;
DELETE FROM movies_stars;
DELETE FROM movies;
DELETE FROM genres;
DELETE FROM directors;
DELETE FROM stars;
