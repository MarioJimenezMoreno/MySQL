DROP DATABASE IF EXISTS ej11_tablas;
CREATE DATABASE IF NOT EXISTS ej11_tablas;

SET autocommit = OFF;
USE ej11_tablas;

CREATE TABLE salesman(
salesman_id NUMERIC(5) PRIMARY KEY,
salesmanName VARCHAR(30),
city VARCHAR(15),
commission DECIMAL(5,2)
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

SELECT * FROM salesman;

BEGIN;
	INSERT INTO salesman (salesman_id, salesmanName, city, commission) VALUES
    (11,'Eric Pastor', 'Valls' , 0.20);
    SELECT * FROM salesman;
ROLLBACK;

SELECT * FROM salesman;

BEGIN;
	INSERT INTO salesman (salesman_id, salesmanName, city, commission) VALUES
    (11,'Andreu Salvany', 'Valls' , 0.69);
    SELECT * FROM salesman;
COMMIT;

SELECT * FROM salesman;