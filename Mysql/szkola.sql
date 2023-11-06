DROP DATABASE IF EXISTS szkola;
CREATE DATABASE szkola DEFAULT CHARACTER SET utf8mb4;


USE szkola;

DROP TABLE IF EXISTS Osoba;
CREATE TABLE Osoba (id int, imie varchar(15));
INSERT INTO Osoba VALUES (1, "Bartosz");
INSERT INTO Osoba VALUES (2, "Jakub");
INSERT INTO Osoba VALUES (1, "Jan");