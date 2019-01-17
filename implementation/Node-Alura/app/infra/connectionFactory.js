console.log("> Configuring module 'infra/connectionFactory'...");

var mysql = require('mysql');

function createDBConnection(){
  return mysql.createConnection({
    host: "localhost",
    user: "lista_usr",
    password : "lista_pwd",
    database: "listavip",
  });
}

module.exports = function(){
  return createDBConnection;
}