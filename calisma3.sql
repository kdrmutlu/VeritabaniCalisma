SELECT urunKod, urunAd, listeFiyat, dovizKod
FROM tblUrun
WHERE listeFiyat < 100

SELECT 
	LEN(urunAd) AS 'Uzunluk',
	LEFT(urunAd, 4) AS 'Ýlk 4' 
FROM tblUrun

SELECT urunKod,urunAd,markaKod 
FROM tblUrun 
WHERE markaKod is null

SELECT *
FROM tblUrun 
WHERE urunAd LIKE '[a-k]%'
ORDER BY urunAd ASC

SELECT urunKod, urunAd, markaKod, listeFiyat
FROM tblUrun 
WHERE markaKod NOT IN(1,4,80)

SELECT urunKod, urunAd, KDVoran, listeFiyat,listeFiyat*1.18 as 'KDVli'
FROM tblUrun 

select  U.urunAd, U.urunKod , U.markaKod
from tblUrun U 
where U.markaKod=(select M.markaKod from tblMarka M where M.Marka='Vestel')

select u.urunAd,u.urunKod,m.markaKod,m.Marka 
from tblUrun u,tblMarka m 
where m.Marka='Vestel' and u.markaKod=m.markaKod

SELECT Marka
FROM tblMarka
WHERE markaKod BETWEEN 65 AND 90

SELECT AVG(bayiFiyat)
FROM tblUrun
WHERE urunKod BETWEEN 3250 AND 3447

SELECT COUNT(*)
FROM tblMarka
WHERE markaKod BETWEEN 85 AND 200

SELECT Marka
FROM tblMarka
WHERE markaKod IN(15, 37, 39, 68 ,81)

SELECT AVG(listeFiyat)
FROM tblMarka, tblUrun
WHERE tblMarka.markaKod = 37

SELECT MIN(bayiFiyat), MAX(bayiFiyat)
FROM tblUrun

SELECT COUNT(*)
FROM tblUrun
WHERE markaKod = 64

SELECT urunAd, M.Marka,listeFiyat
FROM tblUrun, tblMarka M
WHERE bayiFiyat = (SELECT MAX(bayiFiyat) FROM tblUrun)

SELECT Marka
FROM tblMarka
WHERE markaKod BETWEEN 15 AND 32
ORDER BY Marka ASC

SELECT U.urunAd, M.Marka, U.listeFiyat
FROM tblMarka M, tblUrun U
WHERE M.Marka LIKE '%EP%'

SELECT SUM(listeFiyat) - SUM(bayiFiyat)
FROM tblUrun
WHERE urunKod BETWEEN 3064 AND 3294

SELECT COUNT(*)
FROM tblMarka

SELECT u.urunAd, m.Marka, u.listeFiyat, u.dovizKod
FROM tblUrun U, tblMarka M
WHERE U.markaKod IN(37, 58, 81)