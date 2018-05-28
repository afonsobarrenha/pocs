var app = require ('./config/express')();
var rotasProdutos = require('./app/routes/produtos')(app);

app.listen(3000,function(){
    console.log("> Server running...");
});