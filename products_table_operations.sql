-- ======================================================
-- MySQL Practice: Products Table Operations
-- Database: ds_practice
-- ======================================================

-- 1️⃣ Create Products Table
CREATE TABLE products (
    p_id INT PRIMARY KEY,
    p_name VARCHAR(50),
    price FLOAT,
    released_date DATE
);

-- 2️⃣ Insert Sample Data
INSERT INTO products (p_id, p_name, price, released_date) VALUES
(1, 'Iphone', 1200, '2024-03-26'),
(2, 'Ipad', 800, '2024-09-13'),
(3, 'Airpods', 400, '2024-07-26'),
(4, 'Charger', 900, '2025-05-09');

-- 3️⃣ Select All Records
SELECT * FROM products;

-- 4️⃣ Conditional Queries
SELECT * FROM products WHERE price > 1000;
SELECT p_name FROM products WHERE price > 500;
SELECT * FROM products WHERE YEAR(released_date) = 2024;

-- 5️⃣ Aggregate Functions
SELECT COUNT(*) FROM products;
SELECT SUM(price) FROM products;
SELECT AVG(price) FROM products;

-- 6️⃣ Update Operations
UPDATE products
SET price = 1100
WHERE p_name = 'Iphone';

UPDATE products
SET price = 600,
released_date = '2022-10-10'
WHERE p_name = 'Airpods';

-- 7️⃣ Delete Operations
DELETE FROM products WHERE p_name = 'Iphone';
DELETE FROM products WHERE p_name NOT LIKE 'Airpods';

-- 8️⃣ Truncate Table
TRUNCATE TABLE products;

-- 9️⃣ Backup Table
CREATE TABLE products_bkp AS
SELECT * FROM products;

-- 🔟 Copy Only Structure
CREATE TABLE products_structure AS
SELECT * FROM products WHERE 1=2;

-- 1️⃣1️⃣ Drop Table
DROP TABLE IF EXISTS products_structure;

-- 1️⃣2️⃣ Rename Table
ALTER TABLE products RENAME TO product;

-- 1️⃣3️⃣ Modify Column
ALTER TABLE product
CHANGE p_id id FLOAT;
