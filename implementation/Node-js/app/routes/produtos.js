console.log("> Configuring module 'routes/produtos'...");

module.exports = function(app){
    console.log("> Module 'routes/produtos': ok");
    
    app.get("/produtos",function(req, res) {
        console.log(">> Request in /produtos'");
        
        var mysql = require('mysql');

        console.log("> mysql.createConnection...'");
        var connection = mysql.createConnection({
            host: "localhost",
            user: "lista_usr",
            password : "lista_pwd",
            database: "listavip",
        });

        connection.query('select * from convidado', function(err, results){
            console.log("> connection.query...'");
            res.render('produtos/lista', {lista:results});
        });

        console.log("> connection.end");
        connection.end();
    });
}