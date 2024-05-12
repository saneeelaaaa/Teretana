#1 
SELECT 
      Treneri.ime
FROM Treneri
JOIN trener_oprema ON treneri.Trener_ID = trener_oprema.Trener_ID
JOIN oprema ON trener_oprema.Oprema_ID = oprema.Oprema_ID
WHERE Oprema.Naziv_opreme = 'Sprave za zgibove';


#2
SELECT
    članovi.Ime,
    članovi.Prezime, 
    COUNT(*) AS BrojRezervacija
FROM članovi
JOIN Rezervacije ON članovi.Član_ID= rezervacije.Član_ID
GROUP BY članovi.Ime, članovi.Prezime
ORDER BY BrojRezervacija DESC
LIMIT 3;

#3
SELECT
    (SELECT Komentar FROM Recenzije ORDER BY Ocjena ASC LIMIT 1) AS KomentarNajmanjaOcjena,
    (SELECT Komentar FROM Recenzije ORDER BY Ocjena DESC LIMIT 1) AS KomentarNajvećaOcjena,
    AVG(Ocjena) AS ProsječnaOcjena,
    MIN(Ocjena) AS NajmanjaOcjena,
    MAX(Ocjena) AS NajvećaOcjena
FROM 
    Recenzije;

SELECT 
       članovi.Ime, 
       članovi.Prezime, 
       SUM(članstvo.Cijena) AS UkupnaCijenaClanstva
FROM Članovi
JOIN Članstvo ON članovi.Član_ID = Članstvo.Član_ID
GROUP BY članovi.Ime, članovi.Prezime
ORDER BY UkupnaCijenaClanstva DESC
LIMIT 1;


#5
SELECT 
    Pozicija,
    COUNT(*) AS BrojOsoblja
FROM Osoblje
GROUP BY Pozicija;
