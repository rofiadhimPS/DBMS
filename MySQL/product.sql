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


