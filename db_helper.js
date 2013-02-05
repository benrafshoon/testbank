var credentials = require("./db_credentials");
var mysql = require("mysql");
var files = require("fs");

var handler = function(err) {
	if(err) {
		throw err;
	}
}

exports.createTables = function() {
	var params = credentials.connectionParams;
	params.multipleStatements = true;
	var connection = mysql.createConnection(params);
	connection.connect(handler);
	files.readFile("./create_tables.sql", "ascii", function(err, data) {
		handler(err);
		connection.query(data, handler);
		console.log("Successfully created tables");
	});
};

exports.deleteTables = function() {
	var params = credentials.connectionParams;
	params.multipleStatements = true;
	var connection = mysql.createConnection(params);
	connection.connect(handler);
	files.readFile("./drop_tables.sql", "ascii", function(err, data) {
		handler(err);
		connection.query(data, handler);
		console.log("Successfully deleted tables");
	});
};


exports.createDB = function() {
	var connection = mysql.createConnection(credentials.rootConnectionParams);
	connection.connect(handler);
	
	connection.query("CREATE DATABASE testbank;", handler);
	connection.query("CREATE USER 'testbank_user'@'" + credentials.rootConnectionParams.host + "' IDENTIFIED BY 'deltataudeltabetapi';", handler);
	connection.query("GRANT ALL PRIVILEGES ON testbank.* TO 'testbank_user';", handler);
	console.log("Successfully created database \"testbank\" and created user \"testbank_user\" with full privileges");
};

var main = function() {
	
	
};
main();
