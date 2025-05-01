-- Create Data Base
CREATE DATABASE library_db;
USE library_db;

-- Authors Table
CREATE TABLE authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY;
    name VARCHAR(100) NOT NULL
);