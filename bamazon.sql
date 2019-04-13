--To create the database and insure there isn't a duplicate
DROP DATABASE IF EXISTS bamazon_DB;
CREATE DATABASE bamazon_DB;
-- To insure the correct table is being used
USE bamazon_DB;
-- To create the table
CREATE TABLE products(
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(100) NOT NULL,
  department_name VARCHAR(45) NOT NULL,
  price INT default 0,
  quantity INT default 0,
  PRIMARY KEY (id)
);
-- To add data to the table
INSERT INTO bamazon_DB (product_name, department_name, price, quantity)
VALUES ("", "", , ,);
