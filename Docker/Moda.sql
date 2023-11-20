USE moda;

DROP TABLE IF EXISTS Kreacja;
DROP TABLE IF EXISTS Element;
DROP TABLE IF EXISTS Stroj;


CREATE TABLE Stroj (
    idStroj INT PRIMARY KEY AUTO_INCREMENT,
    nazwaStroju VARCHAR(255),
    dataUtworzenia DATE,
    dataWaznosci DATE,
    firma VARCHAR(255),
    wlasciciel VARCHAR(255)
);


CREATE TABLE Element (
    idElement INT PRIMARY KEY AUTO_INCREMENT,
    nazwaElementu VARCHAR(255),
    kategoria VARCHAR(100),
    kolor VARCHAR(100),
    rozmiar VARCHAR(5)
);



CREATE TABLE Kreacja (
    idKreacja INT PRIMARY KEY AUTO_INCREMENT,
    idStroj INT ,
    idElement INT,
    FOREIGN KEY (idStroj) REFERENCES Stroj(idStroj),
    FOREIGN KEY (idElement) REFERENCES Element(idElement),
    dataUtworzenia DATE
);


INSERT INTO Stroj VALUES (NULL, "Wieczorowy", "2023-11-20", "2023-12-20", "TE19", "Bartosz");
INSERT INTO Stroj VALUES (NULL, "Skejtowy", "2023-11-19", "2023-12-24", "Skejpark", "Wojtek");
INSERT INTO Stroj VALUES (NULL, "Kazualowy", "2023-11-20", "2023-12-20", "TE19", "Bartosz");
INSERT INTO Stroj VALUES (NULL, "Moderny", "2023-11-19", "2023-12-24", "Skejpark", "Wojtek");

INSERT INTO Element VALUES (NULL, "Czapka", "góra", "czarny", "L");
INSERT INTO Element VALUES (NULL, "Beret", "góra", "biały", "M");
INSERT INTO Element VALUES (NULL, "Koszulka", "środek", "żółty", "M");
INSERT INTO Element VALUES (NULL, "Koszula", "środek", "niebieski", "S");
INSERT INTO Element VALUES (NULL, "Bluza", "środek", "zielony", "XL");
INSERT INTO Element VALUES (NULL, "Kurtka", "środek", "czarny", "XL");
INSERT INTO Element VALUES (NULL, "Spodnie", "dół", "czerwony", "S");
INSERT INTO Element VALUES (NULL, "Rajtuzy", "dół", "czerwony", "M");
INSERT INTO Element VALUES (NULL, "Kalesony", "dół", "czarny", "S");
INSERT INTO Element VALUES (NULL, "Skarpety", "dół", "srebrny", "S");
INSERT INTO Element VALUES (NULL, "Kolanówki", "dół", "tęczowy", "L");
INSERT INTO Element VALUES (NULL, "Buty", "dół", "czarny", "XL");

INSERT INTO Kreacja VALUES (NULL, 1, 2, "2023-11-20");
INSERT INTO Kreacja VALUES (NULL, 1, 5, "2023-11-20");
INSERT INTO Kreacja VALUES (NULL, 1, 6, "2023-11-20");
INSERT INTO Kreacja VALUES (NULL, 1, 12, "2023-11-20");
INSERT INTO Kreacja VALUES (NULL, 2, 4, "2023-11-21");
INSERT INTO Kreacja VALUES (NULL, 2, 6, "2023-11-21");



-- Wypisz iloczyn kartezjanski Strojow i Kreacji
SELECT * FROM Stroj, Kreacja;

-- Dodamy do Stroju i Kreacji wspólne pole - idStroj
SELECT * FROM Stroj, Kreacja WHERE Stroj.idStroj = Kreacja.idStroj;

-- to samo co wyzej, ale jako pelnoprawne zlanczenia
SELECT * FROM Stroj JOIN Kreacja ON Stroj.idStroj = Kreacja.idStroj;

-- Testy INNER JOIN
SELECT * FROM Stroj JOIN Kreacja ON Stroj.idStroj = Kreacja.idStroj;

-- Testy CROSS JOIN 
SELECT * FROM Stroj CROSS JOIN Kreacja ON Stroj.idStroj = Kreacja.idStroj;

