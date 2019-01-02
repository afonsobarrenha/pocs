const EventEmitter = require('events');

var url = 'http://mylogger.io/log';

class Logger extends EventEmitter {

    log(message) {
        // Send an HTTP request
        console.log(message);

        // Raise an event
        this.emit('eventEmmit', message);
    }

}

// Removemos o export da variável da função, exportando diretamente essa função 
//module.exports.log = log;

//module.exports.endPoint = url;

module.exports = Logger;