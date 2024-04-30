Select * from Film;

--Aufgabe 1
SELECT DISTINCT Jahr, Titel
FROM Film
ORDER BY Jahr;


--Aufgabe 2
SELECT Länge, Titel
FROM Film
ORDER BY Länge DESC


--Aufgabe 3
SELECT Regisseur.Nachname, 
Regisseur.Vorname,
COUNT (Film.Titel) AS Anzahl_Filme
FROM Regisseur
INNER JOIN Film ON Regisseur.RegisseurID = Film.RegisseurID 
WHERE Regisseur.Nachname = 'Scott' AND Regisseur.Vorname = 'Ridley'
GROUP BY Regisseur.Nachname, 
Regisseur.Vorname;


--Aufgabe 4
SELECT ROUND(AVG(Länge))
FROM Film;


--Aufgabe 5
SELECT count(*) as Anzahl_Regisseure
FROM (
    SELECT R.RegisseurID, count(F.FilmID) as Anzahl_Filme
    FROM Regisseur R
    LEFT JOIN Film F ON R.RegisseurID = F.RegisseurID
    GROUP BY R.RegisseurID
) as Regisseure_Filme
WHERE Anzahl_Filme >= 1;


--Aufgabe 6
SELECT Jahr, COUNT(*) AS Anzahl_Film
FROM Film
GROUP BY Jahr
ORDER BY Anzahl_Film DESC
LIMIT 2;





--Teamarbeit mit: Tobias Koormann