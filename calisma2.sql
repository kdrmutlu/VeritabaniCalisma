SELECT listeFiyat
FROM tblUrun
WHERE urunKod = 3200

SELECT urunAd,bayiFiyat
FROM tblUrun
WHERE listeFiyat BETWEEN 150 AND 1000

SELECT COUNT(*)
FROM tblUrun
WHERE listeFiyat BETWEEN 150 AND 1000

SELECT urunAd,listeFiyat,bayiFiyat
FROM tblUrun
WHERE urunKod IN(3200, 3210, 3150, 3400)

SELECT urunAd
FROM tblUrun
WHERE listeFiyat BETWEEN 150 AND 1000 ORDER BY urunAd desc

SELECT urunAd,urunKod
FROM tblUrun
WHERE listeFiyat BETWEEN 150 AND 1000 ORDER BY urunAd desc, urunKod asc

SELECT urunAd
FROM tblUrun
WHERE urunAd LIKE '%klavye%'

SELECT urunAd
FROM tblUrun
WHERE urunAd LIKE 'K%'

SELECT urunAd
FROM tblUrun
WHERE urunAd LIKE '%k'

SELECT urunAd
FROM tblUrun
WHERE urunAd LIKE '_s%'

SELECT urunAd
FROM tblUrun
WHERE urunAd LIKE '%klavye%'
ORDER BY urunAd DESC

SELECT urunAd
FROM tblUrun
WHERE urunAd LIKE 'K%'
ORDER BY urunAd DESC
/*13*/
SELECT urunAd
FROM tblUrun
WHERE urunAd LIKE '%k'
ORDER BY urunAd DESC

SELECT urunAd
FROM tblUrun
WHERE urunAd LIKE '_s%'
ORDER BY urunAd DESC

SELECT urunAd
FROM tblUrun
WHERE urunAd LIKE '__a%'
ORDER BY urunAd DESC

SELECT SUM(listeFiyat)
FROM tblUrun
/*17*/
SELECT SUM(listeFiyat)
FROM tblUrun
WHERE stokDurum != 0
/*18*/

/*19*/
SELECT AVG(bayiFiyat),AVG(listeFiyat)
FROM tblUrun

SELECT urunAd, Barkod, listeFiyat
FROM tblUrun
WHERE listeFiyat = (SELECT MIN(listeFiyat) FROM tblUrun)

SELECT urunAd, Barkod, listeFiyat
FROM tblUrun
WHERE listeFiyat = (SELECT MAX(listeFiyat) FROM tblUrun)

SELECT COUNT(*)
FROM tblUrun

SELECT COUNT(*)
FROM tblUrun
WHERE urunAd LIKE '_a%'

SELECT CEILING(listeFiyat),urunAd
FROM tblUrun

SELECT FLOOR(listeFiyat),urunAd
FROM tblUrun

SELECT marka
FROM tblMarka, tblUrun
WHERE listeFiyat = (SELECT MAX(listeFiyat) FROM tblUrun)

