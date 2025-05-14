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