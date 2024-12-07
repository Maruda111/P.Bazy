use Firma_Kurierska;
go
insert into Klient(IdKlient,Adres) values
(1, 'ul. Lipowa 10, Warszawa'),
(2, 'ul. Dêbowa 23, Kraków'),
(3, 'ul. Klonowa 7, Gdañsk'),
(4, 'ul. S³oneczna 15, Wroc³aw'),
(5, 'ul. Polna 3, Poznañ'),
(6, 'ul. Leœna 25, Szczecin'),
(7, 'ul. Kwiatowa 12, £ódŸ'),
(8, 'ul. Ogrodowa 8, Lublin'),
(9, 'ul. Szkolna 19, Bydgoszcz'),
(10, 'ul. Zielona 4, Katowice'),
(11, 'ul. Wiosenna 6, Toruñ'),
(12, 'ul. Jesienna 21, Olsztyn'),
(13, 'ul. Górska 9, Zakopane'),
(14, 'ul. Nadmorska 5, Sopot'),
(15, 'ul. Wodna 2, Gdynia');

INSERT INTO Kurier (IdKurier, Stanowisko, PrzelozonyId)
VALUES
(16, 'Kurier Miejski', NULL),
(17, 'Kurier Ekspresowy', 16),
(18, 'Kurier Miejski', 16),
(19, 'Kurier Regionalny', NULL),
(20, 'Kurier Ekspresowy', 19),
(21, 'Kurier Miêdzynarodowy', NULL),
(22, 'Kurier Ekspresowy', 21),
(23, 'Kurier Miejski', 19),
(24, 'Kurier Regionalny', 19),
(25, 'Kurier Ekspresowy', NULL),
(26, 'Kurier Miêdzynarodowy', 21),
(27, 'Kurier Miejski', 16),
(28, 'Kurier Regionalny', NULL),
(29, 'Kurier Ekspresowy', 28),
(30, 'Kurier Miêdzynarodowy', 21);

INSERT INTO JezykKurier (IdKurier, Jezyk)
VALUES
(16, 'Polski'),
(17, 'Polski'),
(17, 'Niemiecki'),
(18, 'Polski'),
(18, 'Francuski'),
(19, 'Polski'),
(19, 'Hiszpañski'),
(20, 'Polski'),
(20, 'W³oski'),
(21, 'Polski'),
(21, 'Rosyjski'),
(22, 'Polski'),
(22, 'Czeski'),
(23, 'Ukraiñski'),
(24, 'Polski'),
(24, 'Szwedzki'),
(25, 'Polski'),
(25, 'Norweski'),
(26, 'Polski'),
(26, 'Chiñski'),
(27, 'Polski'),
(27, 'Japoñski'),
(28, 'Polski'),
(28, 'Portugalski'),
(29, 'Polski'),
(29, 'Koreañski'),
(30, 'Polski'),
(30, 'Turecki');

INSERT INTO Paczka (NumerTrackingowy, Waga, Wymiary, Status, IdKlientNadawca, IdKlientOdbiorca)
VALUES
('TRK1001', 2.5, '30x20x10', 'Nadana', 1, 2),
('TRK1002', 5.0, '40x30x20', 'W drodze', 3, 4),
('TRK1003', 1.2, '20x15x10', 'Dostarczona', 5, 6),
('TRK1004', 3.3, '35x25x15', 'W drodze', 7, 8),
('TRK1005', 4.7, '50x40x30', 'Nadana', 9, 10),
('TRK1006', 2.9, '30x20x20', 'Dostarczona', 11, 12),
('TRK1007', 3.8, '45x35x25', 'W drodze', 13, 14),
('TRK1008', 6.1, '60x50x40', 'Nadana', 15, 1),
('TRK1009', 2.4, '25x20x15', 'Dostarczona', 2, 3),
('TRK1010', 4.0, '40x30x30', 'W drodze', 4, 5),
('TRK1011', 1.8, '25x20x10', 'Nadana', 6, 7),
('TRK1012', 5.3, '50x40x20', 'Dostarczona', 8, 9),
('TRK1013', 3.1, '35x25x20', 'W drodze', 10, 11),
('TRK1014', 2.7, '30x20x15', 'Dostarczona', 12, 13),
('TRK1015', 4.5, '40x35x25', 'W drodze', 14, 15);

INSERT INTO Faktura (IdKlient, DataWystawienia, Kwota, StatusPlatnosci)
VALUES
(1, '2024-11-01', 100.50, 'Zap³acona'),
(2, '2024-11-02', 200.75, 'Nieop³acona'),
(3, '2024-11-03', 150.00, 'Zap³acona'),
(4, '2024-11-04', 175.25, 'Nieop³acona'),
(5, '2024-11-05', 80.00, 'Zap³acona'),
(6, '2024-11-06', 120.30, 'Nieop³acona'),
(7, '2024-11-07', 250.00, 'Zap³acona'),
(8, '2024-11-08', 300.50, 'Nieop³acona'),
(9, '2024-11-09', 90.00, 'Zap³acona'),
(10, '2024-11-10', 110.75, 'Zap³acona'),
(11, '2024-11-11', 175.40, 'Nieop³acona'),
(12, '2024-11-12', 220.90, 'Zap³acona'),
(13, '2024-11-13', 140.00, 'Zap³acona'),
(14, '2024-11-14', 160.25, 'Nieop³acona'),
(15, '2024-11-15', 200.00, 'Zap³acona');

INSERT INTO Magazyn (Nazwa, Adres, Pojemnosc)
VALUES
('Magazyn Centralny', 'ul. Centralna 1, Warszawa', 5000),
('Magazyn Pó³noc', 'ul. Pó³nocna 5, Gdañsk', 3000),
('Magazyn Po³udnie', 'ul. Po³udniowa 8, Kraków', 2500),
('Magazyn Wschód', 'ul. Wschodnia 10, Lublin', 2000),
('Magazyn Zachód', 'ul. Zachodnia 12, Wroc³aw', 4000),
('Magazyn Mazowiecki', 'ul. Mazowiecka 3, P³ock', 1500),
('Magazyn Wielkopolski', 'ul. Wielkopolska 9, Poznañ', 3500),
('Magazyn Œl¹ski', 'ul. Œl¹ska 6, Katowice', 4500),
('Magazyn Pomorski', 'ul. Pomorska 11, Gdynia', 3000),
('Magazyn Lubelski', 'ul. Lubelska 4, Lublin', 2000),
('Magazyn Ma³opolski', 'ul. Ma³opolska 7, Kraków', 2500),
('Magazyn Podlaski', 'ul. Podlaska 2, Bia³ystok', 1800),
('Magazyn Dolnoœl¹ski', 'ul. Dolnoœl¹ska 5, Wroc³aw', 3800),
('Magazyn Podkarpacki', 'ul. Podkarpacka 1, Rzeszów', 1600),
('Magazyn Kujawski', 'ul. Kujawska 8, Toruñ', 2200);

INSERT INTO Przewoz (IdPaczka, IdMagazynStart, IdMagazynKoniec, DataTransportu, Odleglosc)
VALUES
(1, 1, 2, '2024-11-01 08:00:00', 350),
(2, 2, 3, '2024-11-02 10:00:00', 400),
(3, 3, 4, '2024-11-03 12:00:00', 250),
(4, 4, 5, '2024-11-04 14:00:00', 500),
(5, 5, 6, '2024-11-05 16:00:00', 600),
(6, 6, 7, '2024-11-06 18:00:00', 450),
(7, 7, 8, '2024-11-07 20:00:00', 300),
(8, 8, 9, '2024-11-08 22:00:00', 700),
(9, 9, 10, '2024-11-09 06:00:00', 250),
(10, 10, 11, '2024-11-10 08:00:00', 400),
(11, 11, 12, '2024-11-11 10:00:00', 600),
(12, 12, 13, '2024-11-12 12:00:00', 550),
(13, 13, 14, '2024-11-13 14:00:00', 300),
(14, 14, 15, '2024-11-14 16:00:00', 650),
(15, 15, 1, '2024-11-15 18:00:00', 550),
(1, 2, 5, '2024-11-16 08:00:00', 450),
(2, 3, 6, '2024-11-17 10:00:00', 350),
(3, 4, 7, '2024-11-18 12:00:00', 500),
(4, 5, 8, '2024-11-19 14:00:00', 600),
(5, 6, 9, '2024-11-20 16:00:00', 700);
go