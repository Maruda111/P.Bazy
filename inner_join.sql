use Firma_Kurierska;
go
SELECT p.IdPaczka, p.NumerTrackingowy, m.Nazwa AS MagazynStart
FROM Przewoz pr
INNER JOIN Paczka p ON pr.IdPaczka = p.IdPaczka
INNER JOIN Magazyn m ON pr.IdMagazynStart = m.IdMagazyn;
