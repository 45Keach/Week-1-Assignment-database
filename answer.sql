-- Week 1 MySQL Database Assignment
-- Topic: Restaurant Management System
-- Database name: restaurant_management

-- Create the database
CREATE DATABASE IF NOT EXISTS restaurant_management;

-- Select the database
USE restaurant_management;

-- Create customers table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100) UNIQUE
);

-- Create menu items table
CREATE TABLE menu_items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    available BOOLEAN DEFAULT TRUE
);

-- Create orders table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(30) DEFAULT 'Pending',
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Create order items table
CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    item_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (item_id) REFERENCES menu_items(item_id)
);

-- Insert sample customers
INSERT INTO customers (first_name, last_name, phone, email) VALUES
('John', 'Kamau', '0712345678', 'john@example.com'),
('Mary', 'Achieng', '0723456789', 'mary@example.com');

-- Insert sample menu items
INSERT INTO menu_items (item_name, category, price, available) VALUES
('Chicken Burger', 'Main Course', 650.00, TRUE),
('Beef Pizza', 'Pizza', 1200.00, TRUE),
('French Fries', 'Side', 300.00, TRUE),
('Fresh Juice', 'Drinks', 250.00, TRUE);

-- Insert sample orders
INSERT INTO orders (customer_id, status) VALUES
(1, 'Completed'),
(2, 'Pending');

-- Insert sample order items
INSERT INTO order_items (order_id, item_id, quantity) VALUES
(1, 1, 2),
(1, 3, 1),
(2, 2, 1),
(2, 4, 2);

-- View the tables in the database
SHOW TABLES;

-- View sample data
SELECT * FROM customers;
SELECT * FROM menu_items;
SELECT * FROM orders;
SELECT * FROM order_items;
