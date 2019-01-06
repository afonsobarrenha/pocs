const express = require('express');
const helmet = require('helmet'); // Helmet helps you secure your Express apps by setting various HTTP headers.
const morgan = require('morgan'); // Logs
const Joi = require('joi'); // Validations
const config = require('config'); // Configurations
const logger = require('./logger'); // Custom Log Middleware

// Debug
const log = require('debug')('app:log'); 
const debug = require('debug')('app:debug'); 

// Routers
const courses = require('./courses'); 

log('Creating express app...');

var app = express();
app.use(helmet());
app.use(express.json()); // habilita o req.body como um json
app.use(express.urlencoded({ extended: true })); // habilita o recebimento de query parameters no req 
app.use(express.static('public')); // habilita a pasta 'public' como pública
app.use(logger);

log('Configuring template engine (pug)...')
app.set('view engine', 'pug');
app.set('views', '.views')

log('Creating routers...')

// Routers
app.use('/api/courses', courses);

// Ways to get properties

// export NODE_ENV=development
debug(`NODE_ENV: ${ process.env.NODE_ENV }`);
debug(`app env: ${ app.get('env') }`); // reads the variable above

// Reads from the config folder, with one file per variable value
debug(`Application Name: ${config.get('name')}`);
debug(`Mail Server: ${config.get('mail.host')}`);
debug(`Mail Password: ${config.get('mail.password')}`);

// Setting morgan
log(`NODE_ENV: ${app.get('env')}...`)

if(app.get('env') === 'development'){
    debug('Using morgan(dev).');
    app.use(morgan('dev'));
} else {
    debug('Using morgan(short).');
    app.use(morgan('short'));
}

// Setting PORT
log(`PORT: ${process.env.PORT}...`)

if(process.env.PORT){
    debug(`Using port ${process.env.PORT}.`);
    port = process.env.PORT
} else {
    debug(`Using port 3000.`);
    port = 3000
}

// Welcome
app.get('/', (req, res) => {
    res.send('express-demo helloworld');
})

app.listen(port, () => console.log(`express-demo app listening on ${port}...`));