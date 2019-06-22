
module.exports = function(app){
		
  app.get("/login",function(req, res) {
    console.log("GET /login");
                        
    var os = require("os");
    var backend_hostname = os.hostname();
    console.log("hostname: " + backend_hostname);

    res.render('pages/login', { backend_hostname: backend_hostname });
  });

}