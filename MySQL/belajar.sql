-- Active: 1737277784953@@127.0.0.1@3306@belajar_mysql
SHOW ENGINES; -- Melihat engine
SHOW TABLES; -- melihat tabel
CREATE TABLE barang(
    id INT,
    nama VARCHAR(100),
    harga INT,
    jumlah INT
)ENGINE = InnoDB;
