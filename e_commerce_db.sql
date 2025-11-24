create database e_commerce;
use e_commerce

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(150),
    city VARCHAR(100)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(150),
    category VARCHAR(100),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES
(1, 'Amit Sharma', 'amit@example.com', 'Delhi'),
(2, 'Priya Singh', 'priya@example.com', 'Mumbai'),
(3, 'Rohit Kumar', 'rohit@example.com', 'Bangalore');

INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 55000.00),
(102, 'Smartphone', 'Electronics', 22000.00),
(103, 'Shoes', 'Fashion', 2500.00),
(104, 'Watch', 'Accessories', 3000.00);

INSERT INTO orders VALUES
(1001, 1, '2025-01-10'),
(1002, 2, '2025-01-12'),
(1003, 1, '2025-01-13'),
(1004, 3, '2025-01-14');

INSERT INTO order_items VALUES
(1, 1001, 101, 1),
(2, 1001, 103, 2),
(3, 1002, 102, 1),
(4, 1003, 104, 3),
(5, 1004, 103, 1),
(6, 1004, 102, 2);

