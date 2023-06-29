DROP DATABASE IF EXISTS ej8_tablas;
CREATE DATABASE IF NOT EXISTS ej8_tablas;

USE ej8_tablas;

CREATE TABLE address(
address_id SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
address VARCHAR(50) NOT NULL,
address2 VARCHAR(50),
district VARCHAR(20) NOT NULL,
postal_code VARCHAR(10),
phone VARCHAR(20) NOT NULL,
location VARCHAR(20) NOT NULL,
last_update TIMESTAMP NOT NULL
);

CREATE TABLE city(
city_id SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
city VARCHAR(50) NOT NULL,
last_update TIMESTAMP NOT NULL
);

CREATE TABLE country(
country_id SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
country VARCHAR(50) NOT NULL,
last_update TIMESTAMP NOT NULL
);

TRUNCATE address;
TRUNCATE city;
TRUNCATE country;

INSERT INTO address (address, address2, district, postal_code, phone, location, last_update) VALUES
('123 Main St', 'Apt 4', 'District 1', '12345', '555-1234', 'Location 1', CURRENT_TIMESTAMP),
('456 Elm St', NULL, 'District 2', '67890', '555-5678', 'Location 2', CURRENT_TIMESTAMP),
('789 Oak St', 'Suite 10', 'District 3', '24680', '555-9101', 'Location 3', CURRENT_TIMESTAMP),
('321 Pine St', NULL, 'District 4', '13579', '555-1112', 'Location 4', CURRENT_TIMESTAMP),
('654 Maple St', 'Apt 7', 'District 5', '97531', '555-1314', 'Location 5', CURRENT_TIMESTAMP),
('987 Birch St', 'Unit 3', 'District 6', '46802', '555-1516', 'Location 6', CURRENT_TIMESTAMP),
('159 Walnut St', NULL, 'District 7', '80246', '555-1718', 'Location 7', CURRENT_TIMESTAMP),
('753 Chestnut St', 'Suite 5', 'District 8', '62480', '555-1920', 'Location 8', CURRENT_TIMESTAMP),
('852 Spruce St', 'Apt 2', 'District 9', '20864', '555-2122', 'Location 9', CURRENT_TIMESTAMP),
('426 Ash St', NULL, 'District 10', '74026', '555-2324', 'Location 10', CURRENT_TIMESTAMP);

INSERT INTO city (city, last_update) VALUES
('New York', CURRENT_TIMESTAMP),
('London', CURRENT_TIMESTAMP),
('Paris', CURRENT_TIMESTAMP),
('Tokyo', CURRENT_TIMESTAMP),
('Sydney', CURRENT_TIMESTAMP),
('Dubai', CURRENT_TIMESTAMP),
('Rome', CURRENT_TIMESTAMP),
('Toronto', CURRENT_TIMESTAMP),
('Moscow', CURRENT_TIMESTAMP),
('Berlin', CURRENT_TIMESTAMP);

INSERT INTO country (country, last_update) VALUES
('United States', CURRENT_TIMESTAMP),
('United Kingdom', CURRENT_TIMESTAMP),
('France', CURRENT_TIMESTAMP),
('Japan', CURRENT_TIMESTAMP),
('Australia', CURRENT_TIMESTAMP),
('United Arab Emirates', CURRENT_TIMESTAMP),
('Italy', CURRENT_TIMESTAMP),
('Canada', CURRENT_TIMESTAMP),
('Russia', CURRENT_TIMESTAMP),
('Germany', CURRENT_TIMESTAMP);

SELECT * FROM country
INNER JOIN city ON country_id = city_id
INNER JOIN address ON city_id = address_id ;