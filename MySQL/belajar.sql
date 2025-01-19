-- Active: 1737277784953@@127.0.0.1@3306
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

ALTER TABLE barang
MODIFY ID INT NOT NULL; -- Not Null for id

ALTER TABLE barang
MODIFY nama VARCHAR(200) NOT NULL;

SHOW CREATE TABLE barang;

ALTER Table barang
MODIFY jumlah INT NOT NULL DEFAULT 0;

ALTER TABLE barang
MODIFY harga INT NOT NULL DEFAULT 0;

ALTER TABLE barang
ADD waktu_dibuat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

INSERT INTO barang (id, nama) VALUES (1, "Apel");

SELECT * FROM barang;

-- Membuat Ulang Table

TRUNCATE barang;

SHOW TABLES;

DROP TABLE barang; -- Menghapus table barang