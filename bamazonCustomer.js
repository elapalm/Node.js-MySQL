var mysql = require("mysql");
var inquirer = require ("inquirer");

// MySQL

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "!do@May2009<3",
  database: "bamazon_DB",
});

connection.connect(function (err) {
  if (err) throw err;
  console.log("connected as id" + connection.threadId);
  afterConnection();
  console.log("Welcome to Bamazon!");
}); // end of MySQL

  // Inquirer
var inquirer = require("inquirer");
inquirer
  .prompt([
    {
      type: input,
      name: item_id,
      message: "Please enter the Id of the item you would like to purchase.",
      filter: Number
    },
    {
      type: input,
      name: quantity,
      message: "How many would you like to purchase?",
      filter: Number
    },

  ]).then(function(input) {
    var guestQuantity = input.quantity;
    var itemID = input.ID;
    var dbQuery = 'SELECT * FROM products WHERE ?';

    connection.query(dbQuery, {item_id: item}, function(err, data){
      if (err) throw err;

      if (data.langth === 0) {
        console.log("Please enter a valid Item Id!");
        showItems();
      } else {
        var prodData = data[0];
      }
    })
    customerOrder(itemID, guestQuantity);
  })

