// modules
const logger = require('./logger');
const path = require('path');
const os = require('os');
const fs = require('fs');

// vars
var line = '\n- - -\n';

// business logic
var objPath = path.parse(__filename);

var totalmem = os.totalmem;
var freemem = os.freemem;
var cpus = os.cpus;
var hostname = os.hostname;
var platform = os.platform;
var release = os.release;
var uptime = os.uptime;
var userInfo = os.userInfo;

//Usando método assíncrono, que requere uma função de callback.
//Lembrar que o Node é uma aplicação Single-threaded.
var files;
fs.readdir('./', function(err, files){
    if (err) console.log('Error', err);
    else console.log('Result', files);
});

// prints
logger(line);

//Estamos exportando diretamente a função
//logger.log('message!');

logger('logger working!');
logger(line);

logger(objPath);
logger(line);

logger(`totalmem: ${totalmem/1024/1024/1024} GB`);
logger(line);

logger(`freemem: ${freemem/1024/1024/1024} GB`);
logger(line);

logger(`cpus: ${cpus}`);
logger(line);

logger(`hostname: ${hostname}`);
logger(line);

logger(`platform: ${platform}`);
logger(line);

logger(`release: ${release}`);
logger(line);

logger(`uptime: ${uptime}`);
logger(line);

logger(`userInfo: ${userInfo}`);
logger(line);