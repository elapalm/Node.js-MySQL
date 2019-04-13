// MySQL

var  mysql = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "!do@May2009<3",
    database: "bamazon_DB",
});

connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id" + connection.threadId);
    afterConnection();
});

// Inquirer
var inquirer = require("inquirer");
inquirer
  .prompt([
    /* Pass your questions in here */
  ])
  .then(answers => {
    // Use user feedback for... whatever!!
  });