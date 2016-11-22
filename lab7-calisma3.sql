SELECT markaKod, COUNT(*) as 'Ürün Sayýsý'
FROM tblMarka
GROUP BY markaKod

SELECT markaKod, COUNT(*) as 'Adet'
FROM tblUrun
WHERE listeFiyat>50 AND listeFiyat<100
GROUP BY markaKod

SELECT M.Marka, COUNT(Marka) as 'Adet'
FROM tblMarka M
INNER JOIN tblUrun U ON M.markaKod = U.markaKod
GROUP BY Marka

SELECT Marka,AVG(listeFiyat) as 'Ortalama Fiyat'
FROM tblUrun U
INNER JOIN tblMarka M ON M.markaKod = U.markaKod
WHERE listeFiyat BETWEEN 100 AND 500
GROUP BY Marka