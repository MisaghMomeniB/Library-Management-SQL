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