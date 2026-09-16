-- Week 2 SQL Database Assignment
-- Database: sales
-- Topics: SELECT, WHERE, ORDER BY, LIMIT, and retrieving data from tables

USE sales;

-- Question 1: Retrieve Payment Information
SELECT checkNumber, paymentDate, amount
FROM payments;

-- Question 2: Find Orders in Process
SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;

-- Question 3: Find Sales Representatives
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;

-- Question 4: Retrieve Office Information
SELECT *
FROM offices;

-- Question 5: Retrieve the Five Cheapest Products
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;
