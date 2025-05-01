# Library Management System 📚

A simple **Library Management System** built using **MySQL** and **SQL** queries to demonstrate relational database design, normalization, and various SQL operations. This project helps track books, authors, members, and loan transactions.

## 📦 Features:
- **Authors Table**: Stores author information (name).
- **Categories Table**: Stores book category information (name).
- **Books Table**: Stores book details (title, year published, total copies, available copies, and foreign keys to authors and categories).
- **Members Table**: Stores library member details (name, email, join date).
- **Loans Table**: Tracks book loan transactions (book_id, member_id, loan date, due date, return date).
- **Penalties Table**: Tracks overdue fines for late book returns.

## 🔧 Prerequisites:
1. **MySQL** installed on your system. (You can use [MySQL Workbench](https://dev.mysql.com/downloads/workbench/) for easier management.)
2. A MySQL server running locally or remotely.
3. A basic understanding of **SQL** and **MySQL** queries.

## 📝 Installation:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/library-management-system.git
   cd library-management-system
   ```

2. **Create the Database**:
   Open MySQL Workbench or any MySQL client and execute the following SQL commands to create the `library_db` database:
   ```sql
   -- Create the Database
   CREATE DATABASE IF NOT EXISTS library_db;
   USE library_db;

   -- Run the create_tables.sql script to create all necessary tables
   source create_tables.sql;
   ```

3. **Insert Sample Data**:
   Run the `sample_data.sql` script to populate the tables with sample data:
   ```sql
   -- Insert sample data into the tables
   source sample_data.sql;
   ```

4. **Verify the Data**:
   You can now verify that the tables are populated by running:
   ```sql
   SELECT * FROM books;
   SELECT * FROM members;
   SELECT * FROM loans;
   ```

---

## 💡 SQL Queries:

### 1. **Get All Books with Author and Category**:
   ```sql
   SELECT 
       b.book_id,
       b.title,
       a.name AS author,
       c.name AS category,
       b.year_published,
       b.total_copies,
       b.available_copies
   FROM books b
   JOIN authors a ON b.author_id = a.author_id
   JOIN categories c ON b.category_id = c.category_id;
   ```

### 2. **List Members Who Have Books That Are Not Yet Returned**:
   ```sql
   SELECT 
       m.member_id,
       m.name,
       m.email,
       l.book_id,
       b.title,
       l.loan_date,
       l.due_date
   FROM loans l
   JOIN members m ON l.member_id = m.member_id
   JOIN books b ON l.book_id = b.book_id
   WHERE l.return_date IS NULL;
   ```

### 3. **Calculate Unpaid Penalties for Each Member**:
   ```sql
   SELECT 
       m.name,
       m.email,
       SUM(p.amount) AS total_unpaid_penalties
   FROM penalties p
   JOIN loans l ON p.loan_id = l.loan_id
   JOIN members m ON l.member_id = m.member_id
   WHERE p.paid = FALSE
   GROUP BY m.member_id;
   ```

### 4. **Show Top 5 Books with the Highest Number of Copies**:
   ```sql
   SELECT 
       title,
       total_copies,
       available_copies
   FROM books
   ORDER BY total_copies DESC
   LIMIT 5;
   ```

### 5. **List Books with No Available Copies**:
   ```sql
   SELECT 
       title,
       total_copies,
       available_copies
   FROM books
   WHERE available_copies = 0;
   ```

---

## 🛠️ Technologies Used:
- **MySQL**: For database management and SQL queries.
- **SQL**: For creating, modifying, and querying data.
- **MySQL Workbench**: For managing the database and running queries.

---

## 🚀 Future Improvements:
- Implement **user authentication** for members.
- Add a **return date validation** to calculate fines automatically.
- Create **stored procedures** for commonly used queries like checking overdue loans or fines.
- Implement a **web interface** using frameworks like **PHP** or **Node.js** for better interaction.

---

## 👨‍💻 Developer:

- **Misagh**
- GitHub: [Go !](https://github.com/MisaghmomeniB)

---

## 📑 License:

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
```
