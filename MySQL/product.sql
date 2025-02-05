-- Active: 1737277784953@@127.0.0.1@3306@belajar_mysql
CREATE TABLE products 
(
    id          VARCHAR(10) NOT NULL,
    name        VARCHAR(100) NOT NULL,
    description TEXT,
    price       INT UNSIGNED NOT NULL,
    quantity    INT UNSIGNED NOT NULL DEFAULT 0,
    created_at  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB;

SHOW TABLES;
DESC products;

INSERT INTO products(id, name, price, quantity)
VALUES ('P0001', 'Mie Ayam Original', 15000, 100);

SELECT * FROM products;

INSERT INTO products(id, name, description, price, quantity)
VALUES ('P0002', 'Mie Ayam Bakso', 'Mie Ayam Original + Bakso', 25000, 100);

INSERT INTO products(id, name, price, quantity)
VALUES ('P0003', 'Mie Ayam Ceker', 20000, 100),
       ('P0003', 'Mie Ayam Spesial', 25000, 100),
       ('P0005', 'Mie Ayam Yamin', 15000, 100);

SELECT * FROM products;

SELECT id, name, price, quantity FROM products;

UPDATE products
SET id = 'P0004'
WHERE name = 'Mie Ayam Spesial';

ALTER TABLE products
ADD PRIMARY KEY (id);

DESCRIBE products;

SELECT * FROM products WHERE quantity = 100;

SELECT * FROM products WHERE price = 15000;

SELECT * FROM products WHERE id = 'P0001';

SELECT * FROM products WHERE name = 'Mie Ayam Bakso';

DESCRIBE products;

ALTER TABLE products
ADD COLUMN category ENUM('Makanan', 'Minuman', 'Lain-lain')
AFTER name;

SELECT * FROM products;

SELECT * FROM products WHERE id = 'P0001';

UPDATE products
SET category = 'Makanan'
WHERE id = 'P0001';

UPDATE products
SET category = 'Makanan',
    description = 'Mie Ayam Original + Ceker'
WHERE id = 'P0003';


UPDATE products
SET price = price + 5000
WHERE id = 'P0005';

INSERT INTO products(id, name, price, quantity)
VALUES ('P0009', 'Mie Ayam Original', 15000, 100);

DELETE FROM products WHERE ID = 'P0009';

SELECT * FROM products;

SELECT id AS 'Kode', 
       name AS 'Nama',
       category AS 'Kategori', 
       price AS 'Harga', 
       quantity AS 'Stok'
FROM products;

SELECT p.id AS 'Kode', 
       p.name AS 'Nama',
       p.category AS 'Kategori', 
       p.price AS 'Harga', 
       p.quantity AS 'Stok'
FROM products AS p;


