console.log("> Configuring module 'express'...");

var app = require('express')();
app.set('view engine', 'ejs');

module.exports = function() {
    console.log("> Module 'express': ok");
    return app;
}