var mysql = require("mysql");

var connection = mysql.createConnection({
    host: 'localhost',
    database: 'healthcare_database',
    user: 'root',
    password: 'password123',
    multipleStatements: true
});

module.exports = connection;