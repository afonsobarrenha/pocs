const express = require('express');
var app = express();

app.get('/', (req, res) => {
    res.send('helloworld');
})

app.get('/api/courses', (req, res) => {
    res.send([1,2,3,4,5]);
})

app.get('/api/courses/:year/:month', (req, res) => {
    res.send(`Param year:${req.params.year}, Param month: ${req.params.month}. Query: ${req.query}`);
})

const port = process.env.PORT || 3000
app.listen(port, () => console.log(`Listening on ${port}...`));
