CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;
CREATE TABLE Books(
book_id INT PRIMARY KEY,
title VARCHAR(130) NOT NULL,
FOREIGN KEY (author_id) REFERENCES Authors(author_id),
price_DOUBLE,
publication_date DATE
);
CREATE TABLE Authors(
author_id INT PRIMARY KEY,
author_name VARCHAR(215)
);
CREATE TABLE Customers(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(215) NOT NULL,
email VARCHAR(215) UNIQUE,
address TEXT
);

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


CREATE TABLE order_details (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity INT,
    price DECIMAL(8, 2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

