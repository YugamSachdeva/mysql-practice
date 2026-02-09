-- ===============================
-- MySQL Practice: Student Database
-- ===============================

-- Create database
CREATE DATABASE ds_practice;
USE ds_practice;

-- Create table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    city VARCHAR(50)
);

-- Insert records
INSERT INTO students VALUES
(1,'Student1',96,'CityA'),
(2,'Student2',56,'CityB'),
(3,'Student3',45,'CityC'),
(4,'Student4',56,'CityD'),
(5,'Student5',78,'CityE');

-- ===============================
-- Practice Queries
-- ===============================

-- View all students
SELECT * FROM students;

-- Students with marks >= 60
SELECT * FROM students
WHERE marks >= 60;

-- Students from a specific city
SELECT * FROM students
WHERE city = 'CityB';

-- Sort students by marks (highest first)
SELECT * FROM students
ORDER BY marks DESC;

-- Average marks
SELECT AVG(marks) FROM students;

-- City-wise average marks
SELECT city, AVG(marks)
FROM students
GROUP BY city;
