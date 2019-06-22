module.exports = function(app){
		
    let backend_counter = 0;
    let backend_version = '';

    app.get("/info",function(req, res) {
      console.log("GET /info");
      
      backend_counter += 1;
      
      console.log("counter: " + backend_counter);

      backend_version = process.env.BACKEND_VERSION;

      console.log("version: " + backend_version);

      var os = require("os");
      var backend_hostname = os.hostname();
      console.log("hostname: " + backend_hostname);
      
      res.render('pages/info', { backend_counter: backend_counter, backend_version: backend_version, backend_hostname: backend_hostname });
  });
}