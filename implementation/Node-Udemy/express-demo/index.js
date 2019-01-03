const express = require('express');
const Joi = require('joi');

var app = express();
app.use(express.json());

const courses = [
    { id: 1, name: 'course1' },
    { id: 2, name: 'course2' },
    { id: 3, name: 'course3' }
];

app.get('/', (req, res) => {
    res.send('helloworld');
})

app.get('/api/courses', (req, res) => {
    res.send(courses);
})

app.get('/api/courses/:id', (req, res) => {
    const course = courses.find(c => c.id === parseInt(req.params.id));
    
    // 400 Resource not found
    if (!course) res.status(404).send('Course not found.');
    
    res.send(course);
})

app.post('/api/courses', (req, res) => {
    const schema = {
        name: Joi.string().min(3).required()
    }

    const result = Joi.validate(req.body, schema);
    if(result.error){
        // 404 Bad Request
        res.status(404).send(result.error.details[0].message);
        return;
    }
;
    const course = {
        id: courses.length +1,
        name: req.body.name
    }

    courses.push(course);
    res.send(course);
})

const port = process.env.PORT || 3000
app.listen(port, () => console.log(`Listening on ${port}...`));
