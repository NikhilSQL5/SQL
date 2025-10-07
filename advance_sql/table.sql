/*

print('=======================================')
print('Droping the Databse')
print('=======================================')

IF DB_ID('Amazon') IS NOT NULL
	BEGIN
			DROP DATABASE Amazon;
	END;

print('=======================================')
print('Creating the Databse')
print('=======================================')

CREATE DATABASE Amazon

*/

print('=======================================')
print('Using the Databse')
print('=======================================')

USE Amazon

print('=======================================')
print('Dropping  the tables Customer')
print('=======================================')

-- Drop the table if it exists

IF OBJECT_ID('dbo.Customer', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.Customer;
END;
GO

print('=======================================')
print('Creating  the tables')
print('=======================================')

print('=======================================')
print('Creating  table Customer')
print('=======================================')

-- Customer Table

CREATE TABLE Customer (
    cid INT PRIMARY KEY,
    fname VARCHAR(50),
    lname VARCHAR(50),
    city VARCHAR(50)
);

print('=======================================')
print('Inserting Data')
print('=======================================')

print('=======================================')
print('Inserting Data Into Customer Table')
print('=======================================')

INSERT INTO Customer (cid, fname, lname, city) VALUES
(1, 'John', 'Smith', 'New York'),
(2, 'Jane', 'Doe', 'Chicago'),
(3, 'Robert', 'Brown', 'Houston'),
(4, 'Emily', 'Davis', 'Boston'),
(5, 'Michael', 'Wilson', 'Seattle'),
(6, 'Sarah', 'Taylor', 'Denver'),
(7, 'David', 'Anderson', 'Dallas'),
(8, 'Laura', 'Thomas', 'San Diego'),
(9, 'James', 'Jackson', 'Miami'),
(10, 'Anna', 'White', 'San Jose'),
(11, 'William', 'Harris', 'Atlanta'),
(12, 'Sophia', 'Martin', 'Phoenix'),
(13, 'Daniel', 'Thompson', 'Detroit'),
(14, 'Olivia', 'Garcia', 'Philadelphia'),
(15, 'Ethan', 'Martinez', 'Austin'),
(16, 'Ava', 'Robinson', 'Orlando'),
(17, 'Matthew', 'Clark', 'Portland'),
(18, 'Isabella', 'Rodriguez', 'Las Vegas'),
(19, 'Joseph', 'Lewis', 'Nashville'),
(20, 'Mia', 'Lee', 'Tampa'),
(21, 'Andrew', 'Walker', 'Cleveland'),
(22, 'Grace', 'Hall', 'Sacramento'),
(23, 'Christopher', 'Allen', 'San Francisco'),
(24, 'Ella', 'Young', 'Minneapolis'),
(25, 'Joshua', 'Hernandez', 'Columbus'),
(26, 'Lily', 'King', 'Kansas City'),
(27, 'Benjamin', 'Wright', 'Raleigh'),
(28, 'Chloe', 'Lopez', 'Indianapolis'),
(29, 'Samuel', 'Hill', 'Pittsburgh'),
(30, 'Zoe', 'Scott', 'Charlotte');


print('=======================================')
print('Data Inserted Into Customer Table')
print('=======================================')

print('=======================================')
print('Dropping  the tables Orders')
print('=======================================')

-- Drop the table if it exists

IF OBJECT_ID('dbo.Orders', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.Orders;
END;
GO

print('=======================================')
print('Creating  table Orders')
print('=======================================')

-- Orders Table

CREATE TABLE Orders (
    oid INT PRIMARY KEY,
    cid INT,
    pid INT,
    order_date DATE,
    order_status VARCHAR(20)
  );
print('=======================================')
print('Inserting Data Into Orders Table')
print('=======================================')


INSERT INTO Orders (oid, cid, pid, order_date, order_status) VALUES
(1, 1, 9, '2025-01-10', 'Shipped'),
(2, 3, 7, '2025-01-12', 'Pending'),
(3, 5, 5, '2025-01-15', 'Delivered'),
(4, 1, 7, '2025-01-20', 'Shipped'),
(5, 3, 1, '2025-01-22', 'Cancelled'),
(6, 5, 4, '2025-01-25', 'Pending'),
(7, 13, 1, '2025-01-28', 'Delivered'),
(8, 15, 3, '2025-02-01', 'Shipped'),
(9, 17, 9, '2025-02-03', 'Pending'),
(10, 13, 7, '2025-02-05', 'Delivered'),
(11, 15, 9, '2025-02-07', 'Shipped'),
(12, 17, 8, '2025-02-10', 'Pending'),
(13, 23, 9, '2025-02-12', 'Delivered'),
(14, 25, 2, '2025-02-14', 'Shipped'),
(15, 27, 5, '2025-02-16', 'Pending'),
(16, 23, 6, '2025-02-18', 'Delivered'),
(17, 25,4, '2025-02-20', 'Cancelled'),
(18, 27, 3, '2025-02-22', 'Pending'),
(19, 6, 3, '2025-02-24', 'Delivered'),
(20,8, 9, '2025-02-26', 'Shipped'),
(21, 10, 10, '2025-02-28', 'Delivered'),
(22, 6,9, '2025-03-01', 'Pending'),
(23, 8, 8, '2025-03-03', 'Shipped'),
(24, 10, 7, '2025-03-05', 'Delivered'),
(25, 18, 6, '2025-03-07', 'Pending'),
(26, 20, 5, '2025-03-09', 'Shipped'),
(27, 22, 4, '2025-03-11', 'Cancelled'),
(28, 18, 3, '2025-03-13', 'Delivered'),
(29, 20, 2, '2025-03-15', 'Shipped'),
(30, 22, 1, '2025-03-17', 'Pending');

print('=======================================')
print('Data Inserted Into Orders Table')
print('=======================================')
-- Drop the table if it exists

IF OBJECT_ID('dbo.Product', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.Product;
END;
GO

print('=======================================')
print('Creating  table Orders')
print('=======================================')

-- Orders Table

CREATE TABLE Product (
    pid INT PRIMARY KEY,
    product_name VARCHAR(100),
    price INT,
	p_quantity INT
);

print('=======================================')
print('Inserting Data Into Orders Table')
print('=======================================')
print('=======================================')
print('Inserting Data Into Product Table')
print('=======================================')

INSERT INTO Product (pid, product_name,price, p_quantity) VALUES
(1, 'Laptop', 20,50),
(2, 'Smartphone',40, 100),
(3, 'Tablet', 50,40),
(4, 'Headphones', 55,75),
(5, 'Keyboard', 40,60),
(6, 'Mouse',80,85),
(7, 'Monitor', 90,30),
(8, 'Printer', 100,20),
(9, 'Camera',43, 15),
(10, 'Smartwatch',40, 70),
(11, 'Speaker',60, 45),
(12, 'Charger', 40,90),
(13, 'USB Cable',53, 120),
(14, 'Power Bank', 97,55),
(15, 'External HDD',57, 25),
(16, 'SSD Drive', 14,35),
(17, 'Graphics Card',03, 10),
(18, 'Motherboard',97, 8),
(19, 'CPU', 98,12),
(20, 'RAM', 92,50),
(21, 'Cooling Fan', 56,40),
(22, 'Router',43, 30),
(23, 'Projector', 39,6),
(24, 'TV', 20,20),
(25, 'Game Console',30, 14),
(26, 'VR Headset', 40,7),
(27, 'Drone',50, 5),
(28, 'Microphone',60, 18),
(29, 'Tripod', 70, 25),
(30, 'Flash Drive',80, 200);

print('=======================================')
print('Data Inserted Into Product Table')
print('=======================================')


/*
SELECT TOP 4 * FROM Customer
ORDER BY cid DESC

SELECT TOP 4 * FROM Orders
ORDER BY oid DESC

SELECT TOP 4 * FROM Product
ORDER BY pid DESC
*/


INSERT INTO Customer (cid, fname, lname, city) VALUES
(31, '', 'Smith', 'New York'),
(32, '', '', 'New York'),
(33, '', 'SHARMA', ' '),
(34, 'Adda', 'Smith', 'New York')

INSERT INTO Orders (oid, cid, pid, order_date, order_status) VALUES
(31, 4, 31, '2025-01-10', ''),
(32, 5, 32, '', ''),
(33,5, 33, '2025-03-10', 'Shipped'),
(34, 3, 34, '2025-04-10', '')

INSERT INTO Product (pid, product_name,price, p_quantity) VALUES
(31, '', 33,50),
(32, 'Flash', 42,50),
(33, 'Cleaner', 66,20),
(34, 'NeckBand', 33,80)

SELECT TOP 3 * FROM Customer

SELECT TOP 3 * FROM Orders

SELECT TOP 3 * FROM Product

SELECT 
	c.cid,
	c.fname+' '+c.lname [Name],
	c.city,
	p.product_name,
	p.price
FROM Orders o

LEFT JOIN Customer c
ON o.cid = c.cid

LEFT JOIN Product p
ON o.pid = p.pid
