INSERT INTO personel
VALUES(1,'Kadir','Mutlu','1994-04-16','abc',5000,GETDATE(),5)

UPDATE personel
SET birthDate = '1994-04-16'
WHERE name = 'Kadir'

select *
from personel

UPDATE personel
SET salary = salary + (salary*0.1)
WHERE name = 'Kadir'

SELECT name,lastName,
	LEN(name) AS 'Adýn Uzunluðu',
	LEN(lastName) AS 'Soyadý Uzunluðu' 
FROM personel

DELETE FROM personel
WHERE personelID = 1
