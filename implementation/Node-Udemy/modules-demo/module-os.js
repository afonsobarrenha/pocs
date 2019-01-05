// modules
const os = require('os');

const Logger = require('./logger');

// vars
const logger = new Logger();

var line = '\n- - -\n';

// business logic
var totalmem = os.totalmem;
var freemem = os.freemem;
var cpus = os.cpus;
var hostname = os.hostname;
var platform = os.platform;
var release = os.release;
var uptime = os.uptime;
var userInfo = os.userInfo;

// Register a listener na classe Logger para atender aos prints da aplicação
//emitter.on('messageLogged', function(event){ Lets use an Arrow Function below!
logger.on('eventEmmit', (event) => {
    console.log('logger - eventEmmit', event);
})


// prints
logger.log(line);

//Estamos exportando diretamente a função
//logger.log('message!');

logger.log('logger working!');
logger.log(line);

logger.log(`totalmem: ${totalmem/1024/1024/1024} GB`);
logger.log(line);

logger.log(`freemem: ${freemem/1024/1024/1024} GB`);
logger.log(line);

logger.log(`cpus: ${cpus}`);
logger.log(line);

logger.log(`hostname: ${hostname}`);
logger.log(line);

logger.log(`platform: ${platform}`);
logger.log(line);

logger.log(`release: ${release}`);
logger.log(line);

logger.log(`uptime: ${uptime}`);
logger.log(line);

logger.log(`userInfo: ${userInfo}`);
logger.log(line);