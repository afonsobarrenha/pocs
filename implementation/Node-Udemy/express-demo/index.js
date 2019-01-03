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

    const { error } = validateCourse(req.body);

    if(error){
        // 404 Bad Request
        res.status(404).send(error.details[0].message);
        return;
    }

    const course = {
        id: courses.length +1,
        name: req.body.name
    }

    courses.push(course);
    res.send(course);
})

app.put('/api/courses/:id', (req, res) => {
    const course = courses.find(c => c.id === parseInt(req.params.id));    
    if (!course) res.status(404).send('Course not found.'); // 400 Resource not found

    // object destructure!
    const { error } = validateCourse(req.body);

    if(error){
        res.status(404).send(error.details[0].message); // 404 Bad Request
        return;
    }

    course.name = req.body.name;
    res.send(course);
})

function validateCourse(course){
    const schema = {
        name: Joi.string().min(3).required()
    }

    return Joi.validate(course, schema);
}

const port = process.env.PORT || 3000
app.listen(port, () => console.log(`Listening on ${port}...`));
