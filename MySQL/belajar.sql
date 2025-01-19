-- Active: 1737277784953@@127.0.0.1@3306@belajar_mysql
SHOW ENGINES; -- Melihat engine
SHOW TABLES; -- melihat tabel
CREATE TABLE barang(
    id INT,
    nama VARCHAR(100),
    harga INT,
    jumlah INT
)ENGINE = InnoDB;

-- Melihat struktur Table
DESCRIBE barang;
DESC barang;
SHOW CREATE TABLE barang;

-- Mengubah Table
ALTER TABLE barang
ADD COLUMN deskripsi TEXT;

ALTER TABLE barang
ADD COLUMN salah TEXT; --menambah kolumn

ALTER TABLE barang
drop COLUMN salah; -- menghapus kolom

ALTER TABLE barang
MODIFY nama VARCHAR(200) AFTER deskripsi;

ALTER TABLE barang
MODIFY nama VARCHAR(200) FIRST;