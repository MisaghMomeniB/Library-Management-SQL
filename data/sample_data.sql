-- Use the library_db database
USE library_db;

-- AUTHORS table: inserting three authors
INSERT INTO authors (name) VALUES
('Jalal Al-e-Ahmad'),        -- Persian author of "The School Principal"
('Houshang Moradi Kermani'), -- Known for children's books like "The Tales of Majid"
('Jane Austen');

-- CATEGORIES table: inserting three book categories
INSERT INTO categories (name) VALUES
('Novel'),             -- General novel category
('Short Story'),       -- For short story books
('Classic Literature');-- Works considered classics

-- BOOKS table: inserting three books with author_id and category_id references
INSERT INTO books (title, author_id, category_id, year_published, total_copies, available_copies) VALUES
('The School Principal', 1, 1, 1958, 5, 5),    -- Written by Jalal, category: Novel
('The Tales of Majid', 2, 2, 1990, 3, 3),      -- By Moradi Kermani, category: Short Story
('Pride and Prejudice', 3, 3, 1813, 4, 4);     -- By Jane Austen, category: Classic Literature

-- MEMBERS table: inserting two library members
INSERT INTO members (name, email, join_date) VALUES
('Ali Rezaei', 'ali@email.com', '2024-01-10'),       -- Member who joined on Jan 10, 2024
('Sara Mohammadi', 'sara@email.com', '2024-02-20');  -- Member who joined on Feb 20, 2024