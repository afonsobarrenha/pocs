console.log("> Configuring module 'routes/produtos'...");

module.exports = function(app){
    console.log("> Module 'routes/produtos': ok");
    
    app.get("/produtos",function(req, res) {
        console.log(">> Request in /produtos'");
        
        var connection = app.infra.connectionFactory();
        
        connection.query('select * from convidado', function(err, results){
            console.log(">> /produtos/lista - render'");
            res.render('produtos/lista', {lista:results});
        });

        console.log(">> /produtos - ending Connection");
        connection.end();
    });
}