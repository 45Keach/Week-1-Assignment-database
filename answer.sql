-- School Management Database
-- Assignment: School Management, Week-1-Database-Assignment
-- Database name: school_management

-- Create the database
CREATE DATABASE IF NOT EXISTS school_management;

-- Select the database
USE school_management;

-- Create students table
CREATE TABLE students (
    student_id VARCHAR(20) PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    school_name VARCHAR(150) NOT NULL,
    nationality VARCHAR(50) NOT NULL
);

-- Insert 4 sample students
INSERT INTO students (student_id, student_name, age, school_name, nationality) VALUES
('STU001', 'Amina Hassan', 14, 'Kakuma Academy', 'Kenyan'),
('STU002', 'Brian Otieno', 15, 'Kakuma Academy', 'Kenyan'),
('STU003', 'Grace Wanjiku', 13, 'Kakuma Academy', 'Kenyan'),
('STU004', 'Daniel Okello', 16, 'Kakuma Academy', 'Ugandan');

-- View the tables in the database
SHOW TABLES;

-- View all student records
SELECT * FROM students;
