var mysql = require('mysql2');
var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "password",
    database: "complete",
    dateStrings : true
  }).promise();
  
module.exports = con;