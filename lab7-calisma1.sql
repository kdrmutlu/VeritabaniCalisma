SELECT Marka
FROM tblUrun
INNER JOIN tblMarka 
ON tblUrun.markaKod = tblMarka.markaKod
WHERE urunKod = 3200

SELECT Marka, dovizAd
FROM tblUrun U
INNER JOIN tblMarka ON U.markaKod = tblMarka.markaKod
INNER JOIN tblDoviz ON U.dovizKod = tblDoviz.dovizKod
WHERE urunKod = 3200

SELECT U.urunAd,tblMarka.Marka,tblSiparis.siparisTarih
FROM tblUrun U
INNER JOIN tblMarka ON U.markaKod = tblMarka.markaKod
INNER JOIN tblSiparisDetay ON tblSiparisDetay.urunKod = U.urunKod
INNER JOIN tblSiparis ON tblSiparis.faturaKod = tblSiparisDetay.faturaKod
WHERE tblSiparisDetay.faturaKod = 6

SELECT kullaniciAd
FROM tblKullanici K
INNER JOIN tblSiparis S ON S.kullaniciKod = K.kullaniciKod
WHERE faturaKod = 6

SELECT aktifMi
FROM tblSiparis S
INNER JOIN tblSiparisDurum ON S.siparisDurumKod = tblSiparisDurum.siparisDurumKod
WHERE faturaKod = 6

SELECT meslek
FROM tblMeslek M
INNER JOIN tblKullanici K ON M.meslekKod = K.meslekKod
INNER JOIN tblSiparis S ON S.kullaniciKod = K.kullaniciKod
WHERE faturaKod = 6

SELECT kullaniciAd, adet
FROM tblKullanici k
INNER JOIN tblSiparis s ON k.kullaniciKod = s.kullaniciKod
INNER JOIN tblSiparisDetay sp ON sp.faturaKod = s.faturaKod
INNER JOIN tblUrun u ON u.urunKod = sp.urunKod
