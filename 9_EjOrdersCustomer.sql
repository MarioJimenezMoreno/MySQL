DROP DATABASE IF EXISTS ej9_tablas;
CREATE DATABASE IF NOT EXISTS ej9_tablas;

USE ej9_tablas;

CREATE TABLE salesman(
salesman_id NUMERIC(5) PRIMARY KEY,
salesmanName VARCHAR(30),
city VARCHAR(15),
commission DECIMAL(5,2)
);

CREATE TABLE customer(
customer_id NUMERIC(5) PRIMARY KEY,
cust_name VARCHAR(30),
city VARCHAR(15),
grade NUMERIC(3)
);

CREATE TABLE orders(
ord_no NUMERIC (5),
purch_amt DECIMAL(8,2),
ord_date DATE,
customer_id NUMERIC(5),
salesman_id NUMERIC(5),
PRIMARY KEY (ord_no,customer_id,salesman_id),
FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
FOREIGN KEY (salesman_id) REFERENCES salesman(salesman_id)
);

INSERT INTO salesman (salesman_id, salesmanName, city, commission) VALUES
(1, 'John Smith', 'New York', 0.15),
(2, 'Robert Johnson', 'Los Angeles', 0.12),
(3, 'Michael Brown', 'Chicago', 0.10),
(4, 'Jennifer Davis', 'Houston', 0.08),
(5, 'William Clark', 'Phoenix', 0.05),
(6, 'David Martinez', 'Philadelphia', 0.07),
(7, 'Patricia Lee', 'San Antonio', 0.06),
(8, 'Linda Rodriguez', 'San Diego', 0.09),
(9, 'Richard Wilson', 'Dallas', 0.11),
(10, 'Thomas Anderson', 'San Jose', 0.13);


INSERT INTO customer (customer_id, cust_name, city, grade) VALUES
(1, 'ABC Company', 'New York', 85),
(2, 'Pioneer Services', 'Los Angeles', 90),
(3, 'Smith Enterprises', 'Chicago', 75),
(4, 'Johnson Industries', 'Houston', 80),
(5, 'ABC Company', 'Phoenix', 70),
(6, 'Global Trading', 'Philadelphia', 85),
(7, 'Sunshine Foods', 'San Antonio', 80),
(8, 'ABC Company', 'San Diego', 90),
(9, 'Pioneer Services', 'Dallas', 75),
(10, 'Smith Enterprises', 'San Jose', 85);

INSERT INTO orders (ord_no, purch_amt,ord_date, customer_id, salesman_id) VALUES
(1001, 150.75, '2023-06-01',1,1),
(1002, 80.50, '2023-06-05',2,1),
(1003, 200.20, '2023-06-08',3,5),
(1004, 350.00, '2023-06-10',4,7),
(1005, 45.30, '2023-06-12',5,3),
(1006, 120.90, '2023-06-15',6,5),
(1007, 75.25, '2023-06-18',7,7),
(1008, 250.60, '2023-06-20',8,9),
(1009, 180.40, '2023-06-22',9,2),
(1010, 95.75, '2023-06-25',10,1);

SELECT * FROM orders
INNER JOIN customer ON orders.customer_id = customer.customer_id
INNER JOIN salesman ON orders.salesman_id = salesman.salesman_id;

/* 1 */
SELECT COUNT(ord_no) from orders;
/* 2 */
SELECT DISTINCT cust_name from customer;
/* 3 */
SELECT salesmanName,COUNT(orders.ord_no) FROM salesman 
INNER JOIN orders ON salesman.salesman_id = orders.salesman_id
GROUP BY salesman.salesmanName;
/* 4 */
SELECT * FROM customer ORDER BY customer_id LIMIT 5;
/* 5 */
SELECT * FROM orders HAVING purch_amt IN (SELECT MIN(purch_amt) FROM orders);
/* 6 */
SELECT * FROM orders HAVING purch_amt IN (SELECT MAX(purch_amt) FROM orders);