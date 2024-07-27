/*
1. Write an SQL statement to create a table called “Employees” with columns for employee ID, first name, last name, department, and hire date.

2. Insert a few sample records into the “Employees” table using SQL INSERT statements.

3. Write an SQL query to retrieve all employees from the “Employees” table who were hired after a specific date, ordered by their last name in ascending order.
*/

-- Create the Employees table
CREATE TABLE IF NOT EXISTS Employees (
	EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
  Department VARCHAR(50),
	HireDate DATE
);

-- Insert sample records into the Employees table
INSERT INTO Employees (FirstName, LastName, Department, HireDate)
VALUES
  ('John', 'Doe', 'HR', '2023-01-15'),
	('Jane', 'Smith', 'Engineering', '2022-06-30'),
	('Mike', 'Johnson', 'Sales', '2021-09-12');

-- Retrieve all employees hired after a specific dat, ordered by last name
SELECT * FROM Employees
WHERE HireDate > '2022-01-01'
ORDER BY LastName ASC;