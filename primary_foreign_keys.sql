-- ============================================================
-- MySQL Practice: Primary Key & Foreign Key Implementation
-- Database: ds_practice
-- ============================================================


-- 1️⃣ Create Students Table
-- Demonstrates PRIMARY KEY and AUTO_INCREMENT (Identity Concept)

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);


-- 2️⃣ Insert Sample Students

INSERT INTO students (name) VALUES
('VIKRAM'),
('KARTIK'),
('AKSHAT');


-- 3️⃣ View Students Data

SELECT * FROM students;


-- 4️⃣ Create Orders Table
-- Demonstrates FOREIGN KEY and Referential Integrity

CREATE TABLE orders (
    o_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id)
);


-- 5️⃣ Insert Valid Foreign Key Records

INSERT INTO orders (student_id) VALUES
(1),
(2),
(3);


-- 6️⃣ View Orders Data

SELECT * FROM orders;


-- 7️⃣ JOIN Example (Relational Query)

SELECT s.id, s.name, o.o_id
FROM students s
INNER JOIN orders o
ON s.id = o.student_id;


-- 8️⃣ Demonstrating Referential Integrity (Will Fail if student_id doesn't exist)
-- Example (Do NOT run unless testing errors)
-- INSERT INTO orders (student_id) VALUES (99);


-- 9️⃣ Difference Between DELETE and TRUNCATE
-- DELETE FROM students;     -- Does NOT reset AUTO_INCREMENT
-- TRUNCATE TABLE students;  -- Resets AUTO_INCREMENT


-- 🔟 Reset Auto Increment Manually (if required)
-- ALTER TABLE students AUTO_INCREMENT = 1;
