const http = require('http');

const server = http.createServer((req,res) => {
    if(req.url === '/'){
        res.write('Hello World!');
        res.end();
    }

    if(req.url === '/api/courses'){
        res.write(JSON.stringify([ 1 , 2 , 3 ]));
        res.end();
    }
});

// a classe Server é um EventEmmiter, podendo registrar listeners e responder a invocações.
/*
server.on('connection', (socket) => {
    console.log('connecting');
})
*/

server.listen(3000);
console.log('listening on 3000');