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
VALUES ("Watercolor Pallet", "Arts & Crafts", 10.45,2 , 0),
       ("Paint Brushes", "Arts & Crafts", 20.99,2 , 15),
       ("Stamp Set", "Arts & Crafts", 8.95,2 , 32),
       ("Ink Pad", "Arts & Crafts", 3.50,2 , 8),
       ("Sketch Book", "Arts & Crafts", 12.99,2 , 26),
       ("Markers", "Arts & Crafts", 8.00,2 , 50),
       ("Acrylic Paints", "Arts & Crafts", 29.96,2 , 6),
       ("Scrapbook Paper", "Arts & Crafts", 14.50,2 , 10),
       ("Letter Stickers", "Arts & Crafts", 16.55,2 , 2),
       ("How To Draw-For Dummies", "Books", 26.95,2 , 62),
       ("Watercolor Brushes", "Arts & Crafts", 20.00,2 , 9),
       ("Painters Pallet", "Arts & Crafts", 5.95,2 , 2)

