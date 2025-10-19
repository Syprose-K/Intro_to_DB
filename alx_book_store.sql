-- CREATE DATABASE
CREATE DATABASE IF NOT EXISTS alx_book_store;
-- using if not exists ensures if db is created if not found and no error thrown
USE alx_book_store;
--2nd mention tells mySQL to apply all sql commands to this database without this i will
--have to prefix every table like.. CREATE TABLE ALX_BOOK_STORE.AUTHORS (...);
-- AUTHORS TABLE
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL --not null used for required fields, cant be blank
);

-- BOOKS TABLE
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT NOT NULL,
    price double NOT NULL,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- CUSTOMERS TABLE
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE NOT NULL,
    ADDRESS TEXT
);

-- ORDERS TABLE
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- ORDER_DETAILS TABLE
CREATE TABLE Order_Details (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity double NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (BOOK_ID) REFERENCES books(book_id)
);
