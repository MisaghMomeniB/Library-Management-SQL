-- Authors
INSERT INTO authors (name) VALUES
('Misagh Momeni'),
('Ali Karimi'),
('Tiffu')

-- Sorts
INSERT INTO categories (name) VALUES 
('رمان'),
('داستان کوتاه'),
('ادبیات کلاسیک');

-- Books
INSERT INTO books (title, author_id, category_id, year_published, total_copies, available_copies) VALUES 
('مدیر مدرسه', 1, 1, 1958, 5, 5),
('قصه‌های مجید', 2, 2, 1990, 3, 3),
('غرور و تعصب', 3, 3, 1813, 4, 4);

-- اعضا
INSERT INTO members (name, email, join_date) VALUES 
('علی رضایی', 'ali@email.com', '2024-01-10'),
('سارا محمدی', 'sara@email.com', '2024-02-20');