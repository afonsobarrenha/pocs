var url = 'http://mylogger.io/log';

function log(message) {
    // Send an HTTP request
    console.log(message);
}

// Removemos o export da variável da função, exportando diretamente essa função 
//module.exports.log = log;

//module.exports.endPoint = url;

module.exports = log;