INSERT INTO Kunde (Name,Adresse) VALUES
('Tom Meier','Raucherweg 44, 50667 Köln'),
('Lisa Markov','Kondensatorstr. 11, 20097 Hamburg'),
('Enrica Fermi','Ableitung 2, 80336 Stuttgart');


INSERT INTO Artikel (ArtikelNr,Bezeichnung,Preis) VALUES
(99009,'Ladegerät',23.90),
(99102,'Kopfhörer',145.99),
(99222,'Weihnachtskugel',5.00),
(99700,'Krawatte',30);


INSERT INTO Bestellung (KundenNr,Datum) VALUES
(1,'2018-10-30'),
(2,'2018-11-14'),
(1,'2018-11-14');


INSERT INTO BestellteArtikel (BestellNr,ArtikelNr,Anzahl) VALUES
(1,99009,1),(1,99222,10),(1,99700,2),(2,99700,10),(2,99102,1),(3,99102,1);