// modules
const fs = require('fs');

const Logger = require('./logger');

// vars

const logger = new Logger();

var line = '\n- - -\n';

// business logic

//Usando método assíncrono, que requere uma função de callback.
//Lembrar que o Node é uma aplicação Single-threaded.
var files;
fs.readdir('./', function(err, files){
    if (err) console.log('Error', err);
    else console.log('Result', files);
});

// Register a listener na classe Logger para atender aos prints da aplicação
//emitter.on('messageLogged', function(event){ Lets use an Arrow Function below!
logger.on('eventEmmit', (event) => {
    console.log('logger - eventEmmit', event);
})


// prints
logger.log(line);
logger.log('logger working!');
logger.log(line);

