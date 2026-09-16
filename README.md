# Week 1 Assignment – Database

## Week 2 SQL Assignment

This assignment covers the fundamentals of SQL using the **sales** database. The queries demonstrate how to select specific columns, filter records with `WHERE`, sort results with `ORDER BY`, limit results with `LIMIT`, and retrieve data from different tables.

### Database Setup

Make sure the `sales` database is available on your computer before running the queries.

```sql
SHOW DATABASES;
USE sales;
```

If the database is not installed, import the provided sales database and its data before completing the assignment.

## Questions

### Question 1: Retrieve Payment Information

Retrieve the following columns from the `payments` table:

- `checkNumber`
- `paymentDate`
- `amount`

```sql
SELECT checkNumber, paymentDate, amount
FROM payments;
```

### Question 2: Find Orders in Process

Retrieve `orderDate`, `requiredDate`, and `status` from the `orders` table where the status is `In Process`. Sort by `orderDate` in descending order.

```sql
SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;
```

### Question 3: Find Sales Representatives

Retrieve `firstName`, `lastName`, and `email` from the `employees` table for employees whose job title is `Sales Rep`. Sort by `employeeNumber` in descending order.

```sql
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;
```

### Question 4: Retrieve Office Information

Retrieve all columns and all records from the `offices` table.

```sql
SELECT *
FROM offices;
```

### Question 5: Retrieve the Five Cheapest Products

Retrieve `productName` and `quantityInStock` from the `products` table. Sort by `buyPrice` in ascending order and return only five records.

```sql
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;
```

## SQL File

The complete set of assignment queries is available in [`week-2-assignment.sql`](./week-2-assignment.sql).
