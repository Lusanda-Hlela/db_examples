/*
1. Design a simple database schema for a library management system, 
including tables for books, authors, and borrowers

2. Define relationships between the tables you just created.
Clearly identify primary keys, foreign keys and relationships
*/
-- Create the LibraryDB database

CREATE DATABASE IF NOT EXISTS LibraryDB;

-- Switch to the LibraryDB database
USE LibraryDB;

-- Create the Authors table
CREATE TABLE IF NOT EXISTS Authors (
	AuthorID INT AUTO_INCREMENT PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR(50)
);

-- Create the Books table
CREATE TABLE IF NOT EXISTS Books (
	BookID INT AUTO_INCREMENT PRIMARY KEY,
	Title VARCHAR(100),
	AuthorID INT,
	FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- Create the Borrowers table
CREATE TABLE IF NOT EXISTS Borrowers (
	BorrowerID INT AUTO_INCREMENT PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR(50)
);

-- Create the Borrowings table
CREATE TABLE IF NOT EXISTS Borrowings (
	BorrowingID INT AUTO_INCREMENT PRIMARY KEY,
	BookID INT,
	BorrowerID INT,
	BorrowDate DATE,
	ReturnDate DATE,
	FOREIGN KEY (BookID) REFERENCES Books(BookID),
	FOREIGN KEY (BorrowerID) REFERENCES Borrowers(BorrowerID)
);