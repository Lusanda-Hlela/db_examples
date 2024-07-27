-- Disable foreign key checks
SET FOREIGN_KEY_CHECKS = 0;

-- Clear existing data from the Students table
DELETE FROM Students;

-- Enable foreign key checks
SET FOREIGN_KEY_CHECKS = 1;

-- Insert sample data into the Students table
INSERT INTO Students (StudentID, FirstName, LastName, Email, EnrollmentDate)
VALUES
	(1, 'Alice', 'Brown', 'alice.brown@example.com', '2023-01-10'),
	(2, 'Bob', 'Smith', 'bob.smith@example.com', '2023-01-11'),
	(3, 'Charlie', 'Johnson', 'charlie.johnson@example.com', '2023-01-12');

-- Create the Orders table
CREATE TABLE IF NOT EXISTS Orders (
	OrderID INT AUTO_INCREMENT PRIMARY KEY,
	CustomerID INT,
	OrderDate DATE,
	Total DECIMAL(10, 2),
	FOREIGN KEY (CustomerID) REFERENCES Students(StudentID)
);

-- Insert sample data into the Orders table
INSERT INTO Orders (CustomerID, OrderDate, Total)
VALUES
	(1, '2023-07-01', 150.75),
	(2, '2023-07-02', 200.00),
	(3, '2023-07-03', 175.50);

-- View the tables in the SQLtools pane

SELECT * FROM students;

SELECT * FROM Orders;