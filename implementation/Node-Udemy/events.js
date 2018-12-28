const EventEmitter = require('events');
const emitter = new EventEmitter();

// Register a listener
//emitter.on('messageLogged', function(event){ Lets use an Arrow Function below!
emitter.on('messageLogged', (event) => {
    console.log('messageLogged!', event);
})

// Raise an event
emitter.emit('messageLogged', { id: 1, url: 'http://...' });