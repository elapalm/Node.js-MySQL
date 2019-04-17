// MySQL

var mysql = mysql.createConnection({
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

// CONTINUE WORKING HERE!1!!
function showInventory(){
  var query "SELECT * FROM products";

}

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
      name: quaantity,
      message: "How many would you like to purchase?",
      filter: Number
    },

  ])
  .then(function (answer) {
    var guestQuantity = answer.quantity;
    var itemID = answer.ID;
    customerOrder(itemID, guestQuantity);
  });


