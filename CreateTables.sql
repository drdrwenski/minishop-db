CREATE DATABASE Minishop;
USE Minishop;

CREATE TABLE Kunde (
	KundenNr INT AUTO_INCREMENT,
	Name VARCHAR(30) NOT NULL,
	Adresse VARCHAR(50) NOT NULL,
	PRIMARY KEY (KundenNr)
);

CREATE TABLE Bestellung (
	BestellNr BIGINT AUTO_INCREMENT,
	KundenNr INT NOT NULL,
	Datum DATE NOT NULL,
	PRIMARY KEY (BestellNr),
	FOREIGN KEY (KundenNr) REFERENCES Kunde (KundenNr)
);

CREATE TABLE Artikel (
	ArtikelNr INT,
	Bezeichnung VARCHAR(30) NOT NULL,
	Preis DECIMAL(8,2),
	PRIMARY KEY (ArtikelNr)
);

CREATE TABLE BestellteArtikel (
	BestellNr BIGINT,
	ArtikelNr INT,
	Anzahl INT NOT NULL DEFAULT 1,
	PRIMARY KEY (BestellNr,ArtikelNr),
	FOREIGN KEY (BestellNr) REFERENCES Bestellung (BestellNr),
	FOREIGN KEY (ArtikelNr) REFERENCES Artikel (ArtikelNr)
);
