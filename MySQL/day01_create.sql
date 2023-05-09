/*
bu 
arada
kaç satır yazarsanız yazın
hepsi yorum olarak görünür
*/
use sys;
/*========================================
    TABLO OLUSTURMA 1 (CRUD - Create)
========================================*/
-- id, isim, not ortalamasi, adres ve son degistirme tarihi
-- fieldlari iceren bir ogrenciler table'i olusturunuz.

CREATE TABLE ogrenciler
(
id INT,
isim VARCHAR(25),
not_ortalaması DOUBLE,
adres VARCHAR(50),
son_değiştirme_tarihi DATE
);

SELECT * FROM ogrenciler;

/*------------------------------------------------------------
Q1: "tedarikciler" isminde bir tablo olusturun.
   "tedarikci_id", "tedarikci_ismi", "tedarikci_adres" ve 
   "ulasim_tarihi" field'lari olsun.
-------------------------------------------------------------*/
CREATE TABLE tedarikciler
(
tedarikci_id INT,
tedarikci_ismi VARCHAR(20),
tedarikci_adres VARCHAR(50),
ulasım_tarihi DATE
);
SELECT * FROM tedarikciler;

/*========================================
    VAROLAN TABLODAN TABLO OLUSTURMA  
========================================
------------------Syntax------------------
CREATE TABLE table_name
AS
SELECT field1,field2
FROM other_table_name
========================================*/
-- ogrenciler1 tablosundan "isim" ve "not_ortalamasi" field'larini
-- alarak ogrenci_derece isimli yeni bir tablo olusturun.
CREATE TABLE ogrenci_derece
AS
SELECT isim,not_ortalaması
FROM ogrenciler; 
SELECT * FROM ogrenci_derece;

/*--------------------------------------------------------
Q2: "tedarikciler" table'indan "tedarikci_ismi" ve
 "ulasim_tarihi" field'lari olan "tedarikciler_son" 
 isimli yeni bir table olusturun.
---------------------------------------------------------*/
CREATE TABLE tedarikciler_son
AS
SELECT tedarikci_ismi,ulasım_tarihi
FROM tedarikciler;






