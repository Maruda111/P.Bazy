--paczki których waga jest wiêksza ni¿ wszystkie paczki z magazynu startowego 1
USE Firma_Kurierska;
GO
SELECT IdPaczka, NumerTrackingowy, Waga
FROM Paczka
WHERE Waga > ALL (
    SELECT Waga
    FROM Przewoz p
    INNER JOIN Paczka pa ON p.IdPaczka = pa.IdPaczka
    WHERE p.IdMagazynStart = 1
);