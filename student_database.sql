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

-- Insert sample data
INSERT INTO students VALUES
(1,'Student1',96,'CityA'),
(2,'Student2',56,'CityB'),
(3,'Student3',45,'CityC'),
(4,'Student4',56,'CityD'),
(5,'Student5',78,'CityE');
