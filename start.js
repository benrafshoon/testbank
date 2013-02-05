var http = require("http");
var mysql = require("mysql");


var server = http.createServer(function(request, response) {
	var connection = mysql.createConnection({
		host: "localhost",
		port: "3010",
		user: "root",
		password: ""
	});
	connection.connect();
	
	response.writeHead(200);
	response.end("This is a test");
});


process.on("SIGINT", function() {
	console.log("\n");
	console.log("Server terminated, stopping");
	process.exit(0);
})

var port = 3000;
server.listen(port);
console.log("Started server, listening on port " + port);

