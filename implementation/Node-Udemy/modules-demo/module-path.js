// modules
const path = require('path');
const Logger = require('./logger');

// vars

const logger = new Logger();

var line = '\n- - -\n';

// business logic
var objPath = path.parse(__filename);

// prints
logger.log(line);

logger.log('logger working!');
logger.log(line);

logger.log(objPath);
logger.log(line);