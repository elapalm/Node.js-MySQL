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
  price DECIMAL (10,2) NOT NULL,
  quantity INT default 0,
  PRIMARY KEY (item_id)
);
-- To add data to the table

INSERT INTO products (product_name, department_name, price, quantity)
VALUES ("Watercolor Pallet", "Arts & Crafts", 10.45, 0),
       ("Paint Brushes", "Arts & Crafts", 20.99, 15),
       ("Stamp Set", "Arts & Crafts", 8.95, 32),
       ("Ink Pad", "Arts & Crafts", 3.50, 8),
       ("Sketch Book", "Arts & Crafts", 12.99, 26),
       ("Markers", "Arts & Crafts", 8.00, 50),
       ("Acrylic Paints", "Arts & Crafts", 29.96, 6),
       ("Scrapbook Paper", "Arts & Crafts", 14.50, 10),
       ("Letter Stickers", "Arts & Crafts", 16.55, 2),
       ("How To Draw-For Dummies", "Books", 26.95, 62),
       ("Watercolor Brushes", "Arts & Crafts", 20.00, 9),
       ("Painters Pallet", "Arts & Crafts", 5.95, 2)

SELECT * FROM bamazon_db.products;