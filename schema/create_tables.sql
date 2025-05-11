-- Create the database
CREATE DATABASE IF NOT EXISTS library_db;
USE library_db;

-- Authors table
CREATE TABLE authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    biography TEXT,
    birth_date DATE
);

-- Categories table
CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

-- Publishers table
CREATE TABLE publishers (
    publisher_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    address TEXT,
    contact_email VARCHAR(100)
);

-- Books table
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(225) NOT NULL,
    author_id INT,
    category_id INT,
    publisher_id INT,
    isbn VARCHAR(20) UNIQUE,
    year_published INT,
    total_copies INT DEFAULT 1,
    available_copies INT DEFAULT 1,
    description TEXT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (publisher_id) REFERENCES publishers(publisher_id)
);

-- Members table
CREATE TABLE members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15),
    address TEXT,
    join_date DATE,
    membership_type ENUM('Standard', 'Premium') DEFAULT 'Standard'
);

-- Loans table
CREATE TABLE loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    member_id INT,
    loan_date DATE,
    due_date DATE,
    return_date DATE,
    status ENUM('On Loan', 'Returned', 'Overdue') DEFAULT 'On Loan',
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

-- Penalties table
CREATE TABLE penalties (
    penalty_id INT AUTO_INCREMENT PRIMARY KEY,
    loan_id INT,
    amount DECIMAL(6,2),
    paid BOOLEAN DEFAULT FALSE,
    issue_date DATE,
    FOREIGN KEY (loan_id) REFERENCES loans(loan_id)
);