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
CREATE TABLE Orders(
order_id INT PRIMARY KEY,
FOREIGN KEY(customer_id) REFERENCES Customer(customer_id));
CREATE TABLE CUSTOMER(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(215) NOT NULL,
email VARCHAR(215) UNIQUE,
address TEXT
);
CREATE TABLE Order_Details(
orderdetailid INT PRIMARY KEY,
FOREIGN KEY(order_id) REFERENCES Order(order_id),
FOREIGN KEY(book_id) REFERENCES Books(book_id),
quantity DOUBLE
);