-- Create sample Customers table
CREATE TABLE IF NOT EXISTS Customers (
	CustomerID INT AUTO_INCREMENT PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Email VARCHAR(100)
);

-- Insert sample customers
INSERT INTO Customers (FirstName, LastName, Email)
VALUES ('Alice', 'Wonderland', 'alice@example.com'),
       ('Bob', 'Builder', 'bob@example.com'),
       ('Charlie', 'Brown', 'charlie@example.com');

-- Create sample Products table
CREATE TABLE IF NOT EXISTS Products (
	ProductID INT AUTO_INCREMENT PRIMARY KEY,
	ProductName VARCHAR(100),
	Price DECIMAL(10, 2)
);

-- Insert sample products
INSERT INTO Products (ProductName, Price)
VALUES ('Laptop', 999.99),
       ('Smartphone', 599.99),
       ('Book', 29.99);

-- Create sample Orderz table
CREATE TABLE IF NOT EXISTS Orderz (
	OrderID INT AUTO_INCREMENT PRIMARY KEY,
	CustomerID INT,
	OrderDate DATE,
	Status VARCHAR(50),
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert sample Orderz
INSERT INTO Orderz (CustomerID, OrderDate, Status)
VALUES (1, '2023-06-15', 'Shipped'),
       (2, '2023-07-01', 'Processing'),
       (3, '2023-07-05', 'Shipped');

-- Create sample Employeez table
CREATE TABLE IF NOT EXISTS Employeez (
	EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Department VARCHAR(50)
);

-- Insert sample employees
INSERT INTO Employeez (FirstName, LastName, Department)
VALUES ('John', 'Doe', 'Engineering'),
       ('Jane', 'Smith', 'Marketing'),
       ('Alice', 'Johnson', 'Finance');

-- Queries

-- 1. Retrieve names and email addresses of all customers
SELECT FirstName, LastName, Email FROM Customers;

-- 2. Select product names and prices where price is greater than $50
SELECT ProductName, Price FROM Products
WHERE Price > 50;

-- 3. Filter Orderz table for Orderz placed after January 1, 2023, and in 'Shipped' status
SELECT * FROM Orderz
WHERE OrderDate > '2023-01-01' AND Status = 'Shipped';

-- 4. Find products with unit price greater than average unit price
SELECT ProductName, Price FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products);

-- 5. Calculate the total number of employees in each department
SELECT Department, COUNT(*) AS TotalEmployees FROM Employeez
GROUP BY Department;

-- View tables

SELECT * FROM Customers;

SELECT * FROM Products;

SELECT * FROM Orderz;

SELECT * FROM Employeez;