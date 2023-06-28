USE ej4_tablas;
TRUNCATE TABLE album;
TRUNCATE TABLE artist;
TRUNCATE TABLE genre;

INSERT INTO album(albumName,dateReleased) VALUES 
("Album1","2021-10-1"),("Album2","2021-10-2"),("Album3","2021-10-3"),
("Album4","2021-10-4"),("Album5","2021-10-5"),("Album6","2021-10-6"),
("Album7","2021-10-7"),("Album8","2021-10-8"),("Album9","2021-10-9"),("Album10","2021-10-10");

INSERT INTO artist(artistName) VALUES 
("Elvis"),("Rosalia"),("Rauw Alejandro"),("Blas"),("Quim"),
("David"),("Queen"),("Beatles"),("MIKA"),("Mario");

INSERT INTO genre(genre) VALUES 
("rock"),("pop"),("jazz"),("heavy"),("clásico"),
("house"),("electronic"),("hardcore"),("trap"),("rap");

SELECT * FROM album;
SELECT * FROM artist;
SELECT * FROM genre;