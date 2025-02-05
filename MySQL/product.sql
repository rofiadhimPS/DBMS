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

INSERT INTO products(id, category, name, price, quantity)
VALUES  ('P0006', 'Makanan', 'Bakso Rusuk', 25000, 200),
        ('P0007', 'Minuman', 'Es Jeruk', 10000, 300),
        ('P0008', 'Minuman', 'Es Campur', 15000, 500),
        ('P0009', 'Minuman', 'Es Teh Manis', 5000, 400),
        ('P0010', 'Lain-lain', 'Kerupuk', 2500, 1000),
        ('P0011', 'Lain-lain', 'Keripik Udang', 10000, 300),
        ('P0012', 'Lain-lain', 'Es Krim', 5000, 200),
        ('P0013', 'Makanan', 'Mie Ayam Jamur', 20000, 50),
        ('P0014', 'Makanan', 'Bakso Telur', 20000, 150),
        ('P0015', 'Makanan', 'Bakso Ikan', 25000, 300);

SELECT * FROM products WHERE quantity > 100;

SELECT * FROM products WHERE quantity >= 100;

SELECT * FROM products WHERE category != 'makanan';

SELECT * FROM products WHERE category <> 'minuman';

SELECT * FROM products WHERE quantity > 100 AND price > 20000;

SELECT * FROM products WHERE category = 'Makanan' AND price < 20000;

SELECT * FROM products WHERE quantity > 100 OR price > 20000;

SELECT * FROM products WHERE (category = 'Makanan' OR quantity > 500) AND price > 20000;

SELECT * FROM products WHERE name LIKE '%mie%';

SELECT * FROM products WHERE name LIKE '%bakso%';

SELECT * FROM products where description IS NULL;

SELECT * FROM products where description IS NOT NULL;




