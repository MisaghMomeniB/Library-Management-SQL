USE library_db;

-- نویسندگان
INSERT INTO authors (name) VALUES 
('جلال آل‌احمد'), 
('هوشنگ مرادی کرمانی'),
('جین آستین');

-- دسته‌بندی‌ها
INSERT INTO categories (name) VALUES 
('رمان'),
('داستان کوتاه'),
('ادبیات کلاسیک');

-- کتاب‌ها
INSERT INTO books (title, author_id, category_id, year_published, total_copies, available_copies) VALUES 
('مدیر مدرسه', 1, 1, 1958, 5, 5),
('قصه‌های مجید', 2, 2, 1990, 3, 3),
('غرور و تعصب', 3, 3, 1813, 4, 4);

-- اعضا
INSERT INTO members (name, email, join_date) VALUES 
('علی رضایی', 'ali@email.com', '2024-01-10'),
('سارا محمدی', 'sara@email.com', '2024-02-20');

-- امانت‌ها
INSERT INTO loans (book_id, member_id, loan_date, due_date, return_date) VALUES 
(1, 1, '2024-03-01', '2024-03-10', '2024-03-09'),
(2, 2, '2024-03-05', '2024-03-15', NULL);

-- جریمه‌ها
INSERT INTO penalties (loan_id, amount, paid) VALUES 
(2, 15000, FALSE);