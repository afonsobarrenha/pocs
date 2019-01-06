const express = require('express');
const helmet = require('helmet'); // Helmet helps you secure your Express apps by setting various HTTP headers.
const morgan = require('morgan'); // Logs
const Joi = require('joi'); // Validations
const config = require('config'); // Configurations
const logger = require('./logger'); // Custom Log Middleware

// Debug
const appLog = require('debug')('app:index'); 
const dbLog = require('debug')('app:db'); 
const routerLog = require('debug')('app:router'); 

// Routers
const courses = require('./courses'); 

appLog('Creating express app...');

var app = express();
app.use(helmet());
app.use(express.json()); // habilita o req.body como um json
app.use(express.urlencoded({ extended: true })); // habilita o recebimento de query parameters no req 
app.use(express.static('public')); // habilita a pasta 'public' como pública
app.use(logger);

appLog('Creating routers...')

// Routers
app.use('/api/courses', courses);

// Ways to get properties

// export NODE_ENV=development
console.log(`NODE_ENV: ${ process.env.NODE_ENV }`);
console.log(`app env: ${ app.get('env') }`); // reads the variable above

// Reads from the config folder, with one file per variable value
console.log(`Application Name: ${config.get('name')}`);
console.log(`Mail Server: ${config.get('mail.host')}`);
console.log(`Mail Password: ${config.get('mail.password')}`);

appLog(`NODE_ENV: ${app.get('env')}...`)

if(app.get('env') === 'development'){
    appLog('Using morgan(dev).');
    app.use(morgan('dev'));
} else {
    appLog('Using morgan(short).');
    app.use(morgan('short'));
}

app.get('/', (req, res) => {
    res.send('express-demo app');
})

appLog(`PORT: ${process.env.PORT}...`)

if(process.env.PORT){
    appLog(`Using port ${process.env.PORT}.`);
    port = process.env.PORT
} else {
    appLog(`Using port 3000.`);
    port = 3000
}

app.listen(port, () => console.log(`express-demo app listening on ${port}...`));