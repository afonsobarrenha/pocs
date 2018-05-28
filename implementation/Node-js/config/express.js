console.log("> Configuring module 'config/express'...");

var app = require('express')();
app.set('view engine', 'ejs');
app.set('views','./app/views');

module.exports = function() {
    console.log("> Module 'config/express': ok");
    return app;
}