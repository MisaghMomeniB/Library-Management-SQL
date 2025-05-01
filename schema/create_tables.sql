-- ساخت دیتابیس
CREATE DATABASE IF NOT EXISTS library_db;
USE library_db;

-- جدول نویسندگان
CREATE TABLE authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- جدول دسته‌بندی‌ها
CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- جدول کتاب‌ها
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(225) NOT NULL,
    author_id INT,
    category_id INT,
    year_published INT,
    total_copies INT DEFAULT 1,
    available_copies INT DEFAULT 1,
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

-- جدول اعضا
CREATE TABLE members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    join_date DATE
);

-- جدول امانت‌ها
CREATE TABLE loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    member_id INT,
    loan_date DATE,
    due_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

-- جدول جریمه‌ها
CREATE TABLE penalties (
    penalty_id INT AUTO_INCREMENT PRIMARY KEY,
    loan_id INT,
    amount DECIMAL(6,2),
    paid BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (loan_id) REFERENCES loans(loan_id)
);