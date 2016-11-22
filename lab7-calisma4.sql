SELECT Marka,COUNT(Marka) as 'Adet'
FROM tblUrun U
INNER JOIN tblMarka M ON U.markaKod = M.markaKod
GROUP BY Marka
HAVING COUNT(*)>30

SELECT Marka, AVG(listeFiyat) as 'Liste fiyat ortalama'
FROM tblUrun u
INNER JOIN tblMarka m ON u.markaKod = m.markaKod
WHERE u.listeFiyat > 50
GROUP BY Marka
HAVING COUNT(*)>=16