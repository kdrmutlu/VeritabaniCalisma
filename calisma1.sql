SELECT 
	adi,LEN(adi) AS "Uzunluk",
	LEFT(adi, 2) AS "Ýlk iki",
	UPPER(adi) AS "Büyük Harf",
	REVERSE(ADÝ) AS "Ters"
FROM calisanlar

SELECT AVG(maasi) AS "Maaþ Ortalamasý"
FROM calisanlar

SELECT AVG(birimFiyat)
FROM urunler
WHERE saticiFirmaID = 2

SELECT SUM(stokMiktari)
FROM urunler

SELECT SUM(stokMiktari)
FROM urunler
WHERE saticiFirmaID = 3

SELECT MIN(birimFiyat),MAX(birimFiyat)
FROM urunler

SELECT MIN(stokMiktari)
FROM urunler

SELECT COUNT(*)
FROM urunler
WHERE saticiFirmaID = 1

