Create Database Firma_Kurierska;
GO
USE Firma_Kurierska;
GO

CREATE TABLE Uzytkownik (
  IdUzytkownik INT IDENTITY(1,1) PRIMARY KEY,
    TypUzytkownika NVARCHAR(50) NOT NULL CHECK (TypUzytkownika IN ('Kurier', 'Klient')),
    Imie NVARCHAR(50),
    Nazwisko NVARCHAR(50),
    Email NVARCHAR(100),
    Telefon NVARCHAR(15)
);
CREATE TABLE Klient (
    IdKlient INT PRIMARY KEY,
    Adres NVARCHAR(255),
    CONSTRAINT FK_Klient_Uzytkownik FOREIGN KEY (IdKlient) REFERENCES Uzytkownik(IdUzytkownik)
);

CREATE TABLE Kurier (
    IdKurier INT PRIMARY KEY,
    Stanowisko NVARCHAR(50),
    PrzelozonyId INT NULL,
    CONSTRAINT FK_Kurier_Uzytkownik FOREIGN KEY (IdKurier) REFERENCES Uzytkownik(IdUzytkownik),
    CONSTRAINT FK_Kurier_Prze³o¿ony FOREIGN KEY (PrzelozonyId) REFERENCES Kurier(IdKurier) ON DELETE NO ACTION
);
CREATE TABLE JezykKurier (
    IdKurier INT NOT NULL,
    Jezyk NVARCHAR(50) NOT NULL,
    PRIMARY KEY (IdKurier, Jezyk),
    CONSTRAINT FK_JezykKurier_Kurier FOREIGN KEY (IdKurier) REFERENCES Kurier(IdKurier)
);
CREATE TABLE Paczka (
    IdPaczka INT IDENTITY(1,1) PRIMARY KEY,
    NumerTrackingowy NVARCHAR(100) UNIQUE NOT NULL,
    Waga DECIMAL(10, 2),
    Wymiary NVARCHAR(50),
    Status NVARCHAR(50),
    IdKlientNadawca INT NOT NULL,
    IdKlientOdbiorca INT NOT NULL,
    CONSTRAINT FK_Paczka_KlientNadawca FOREIGN KEY (IdKlientNadawca) REFERENCES Klient(IdKlient),
    CONSTRAINT FK_Paczka_KlientOdbiorca FOREIGN KEY (IdKlientOdbiorca) REFERENCES Klient(IdKlient)
);
CREATE TABLE Magazyn (
    IdMagazyn INT IDENTITY(1,1) PRIMARY KEY,
    Nazwa NVARCHAR(100),
    Adres NVARCHAR(255),
    Pojemnosc INT
);
CREATE TABLE Przewoz (
    IdPrzewoz INT IDENTITY(1,1) PRIMARY KEY,
    IdPaczka INT NOT NULL,
    IdMagazynStart INT NOT NULL,
    IdMagazynKoniec INT NOT NULL,
    DataTransportu DATETIME,
    Odleglosc DECIMAL(10, 2),
    CONSTRAINT FK_Przewoz_Paczka FOREIGN KEY (IdPaczka) REFERENCES Paczka(IdPaczka),
    CONSTRAINT FK_Przewoz_MagazynStart FOREIGN KEY (IdMagazynStart) REFERENCES Magazyn(IdMagazyn),
    CONSTRAINT FK_Przewoz_MagazynKoniec FOREIGN KEY (IdMagazynKoniec) REFERENCES Magazyn(IdMagazyn)
);
CREATE TABLE Faktura (
    IdFaktura INT IDENTITY(1,1) PRIMARY KEY,
    IdKlient INT NOT NULL,
    DataWystawienia DATETIME NOT NULL,
    Kwota DECIMAL(10, 2) NOT NULL,
    StatusPlatnosci NVARCHAR(50),
    CONSTRAINT FK_Faktura_Klient FOREIGN KEY (IdKlient) REFERENCES Klient(IdKlient)
);
GO
