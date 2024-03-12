CREATE DATABASE HoneyProductionAndSales COLLATE Cyrillic_General_100_BIN;

CREATE TABLE Beekeepers (
  beekeeper_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  city VARCHAR(50),
  email VARCHAR(50),
  phone VARCHAR(20)
);

CREATE TABLE Apiaries (
  apiary_id INT PRIMARY KEY,
  name VARCHAR(255),
  city VARCHAR(255),
  area_sqm DECIMAL(8,2),
  beekeeper_id INT,
  FOREIGN KEY (beekeeper_id) REFERENCES Beekeepers(beekeeper_id)
);

CREATE TABLE ProducedHoney (
  honey_id INT PRIMARY KEY,
  name VARCHAR(50),
  quantity_kg DECIMAL(8,2),
  production_date DATE,
  apiary_id INT,
  beekeeper_id INT,
  honey_number INT,
  FOREIGN KEY (apiary_id) REFERENCES Apiaries(apiary_id),
  FOREIGN KEY (beekeeper_id) REFERENCES Beekeepers(beekeeper_id)
);

CREATE TABLE Warehouse (
  item_id INT PRIMARY KEY,
  honey_id INT,
  product_name VARCHAR(50),
  quantity_kg DECIMAL(8,2),
  reception_date DATE,
  honey_number INT,
  FOREIGN KEY (honey_id) REFERENCES ProducedHoney(honey_id)
);

CREATE TABLE Customers (
  customer_id INT PRIMARY KEY,
  customer_first_name VARCHAR(50),
  customer_last_name VARCHAR(50),
  customer_city VARCHAR(50),
  customer_phone VARCHAR(20),
  customer_email VARCHAR(50)
);

CREATE TABLE Sales (
  sale_id INT PRIMARY KEY,
  customer_first_name VARCHAR(50),
  customer_last_name VARCHAR(50),
  customer_id INT,
  product_name VARCHAR(50),
  item_id INT,
  quantity_kg DECIMAL(8,2),
  price_per_kg DECIMAL(8,2),
  sale_date DATE,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
  FOREIGN KEY (item_id) REFERENCES Warehouse(item_id)
);
