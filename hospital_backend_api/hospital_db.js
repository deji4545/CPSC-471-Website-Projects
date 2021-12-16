var mysql = require("mysql");

var connection = mysql.createConnection({
    host: '127.0.0.1',
    database: 'healthcare_database',
    user: 'root',
    password: 'password',
    multipleStatements: true
});

module.exports = connection;