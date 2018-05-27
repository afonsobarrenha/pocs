var app = require ('./config/express')();

app.get('/produtos',function(req,res){
    console.log(">> Request in /produtos.");
    res.render("produtos/lista");
});

app.listen(3000,function(){
    console.log("> Server running...");
});