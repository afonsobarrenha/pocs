console.log("> Configuring module 'config/express'...");

var express = require('express');
var load = require('express-load');

module.exports = function() {

    var app = express();

    app.set('view engine', 'ejs');
    app.set('views', './app/views');

    load('routes', {cwd: 'app'})
        .then('infra')
        .into(app);

    console.log("> Module 'config/express': ok");
    return app;
};