CREATE TABLE Članovi (
    Član_ID INT PRIMARY KEY,
    Trener_ID INT,
    Ime VARCHAR(50),
    Prezime VARCHAR(50),
    Telefon VARCHAR(20)
    FOREIGN KEY (Trener_ID) REFERENCES Treneri(Trener_ID)
);
CREATE TABLE Treneri (
    trener_ID INT PRIMARY KEY,
    Ime VARCHAR(50),
    Prezime VARCHAR(50),
    Telefon VARCHAR(20),
    IDOsoblja INT,
    FOREIGN KEY (Osoblje_ID) REFERENCES Osoblje(Osoblje_ID)
);
CREATE TABLE Rezervacije (
    Rezervacija_ID INT PRIMARY KEY,
    Član_ID INT,
    Datum DATE,
    FOREIGN KEY (Član_ID) REFERENCES Članovi(Član_ID)
);
CREATE TABLE Članstvo (
    Članstvo_ID INT PRIMARY KEY,
    Član_ID INT, 
    Naziv VARCHAR(50),
    Cijena DECIMAL(10,2),
    FOREIGN KEY (Član_ID) REFERENCES Članovi(Član_ID)
);
CREATE TABLE Oprema (
    Oprema_ID INT PRIMARY KEY,
    Naziv VARCHAR(50),
    Količina INT
);
CREATE TABLE Osoblje (
    Osoblje_ID INT PRIMARY KEY,
    Ime VARCHAR(50),
    Prezime VARCHAR(50),
    Telefon VARCHAR(20),
    Pozicija VARCHAR(50)
);
CREATE TABLE trener_oprema (
    Trener_ID INT,
    Oprema_ID INT,
    FOREIGN KEY (Trener_ID) REFERENCES Treneri(Trener_ID),
    FOREIGN KEY (Oprema_ID) REFERENCES Oprema(Oprema_ID),
    PRIMARY KEY (Trener_ID, Oprema_ID)
);

CREATE TABLE Recenzije (
    Recenzija_ID INT AUTO_INCREMENT PRIMARY KEY,
    Član_ID INT,
    Datum DATETIME,
    Ocjena INT,
    Komentar TEXT,
    FOREIGN KEY (Član_ID) REFERENCES Članovi(Član_ID)
);