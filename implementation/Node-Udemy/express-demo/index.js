const express = require('express');
const helmet = require('helmet');
const morgan = require('morgan');
const Joi = require('joi');
const logger = require('./logger');

var app = express();
app.use(helmet());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static('public'));
app.use(logger);

console.log(`NODE_ENV: ${ process.env.NODE_ENV }`); //development, production
console.log(`app env: ${ app.get('env') }`); // reads the variable above

if(app.get('env') === 'development') app.use(morgan('dev'));
else app.use(morgan('short'));

const courses = [
    { id: 1, name: 'course1' },
    { id: 2, name: 'course2' },
    { id: 3, name: 'course3' }
];

app.get('/', (req, res) => {
    res.send('express-demo app');
})

app.get('/api/courses', (req, res) => {
    res.send(courses);
})

app.get('/api/courses/:id', (req, res) => {
    const course = courses.find(c => c.id === parseInt(req.params.id));    
    if (!course) return res.status(404).send('Course not found.'); // 400 Resource not found
    
    res.send(course);
})

app.post('/api/courses', (req, res) => {

    const { error } = validateCourse(req.body);
    if (error) return res.status(404).send(error.details[0].message); // 404 Bad Request

    const course = {
        id: courses.length +1,
        name: req.body.name
    }

    courses.push(course);
    res.send(course);
})

app.put('/api/courses/:id', (req, res) => {
    const course = courses.find(c => c.id === parseInt(req.params.id));    
    if (!course) return res.status(404).send('Course not found.'); // 400 Resource not found

    // object destructure!
    const { error } = validateCourse(req.body);
    if (error) return res.status(404).send(error.details[0].message); // 404 Bad Request

    course.name = req.body.name;
    res.send(course);
})

app.delete('/api/courses/:id', (req, res) => {
    const course = courses.find(c => c.id === parseInt(req.params.id));    
    if (!course) return res.status(404).send('Course not found.'); // 400 Resource not found

    const index = courses.indexOf(course);
    courses.splice(index, 1);

    res.send(course);
})

function validateCourse(course){
    const schema = {
        name: Joi.string().min(3).required()
    }

    return Joi.validate(course, schema);
}

const port = process.env.PORT || 3000
app.listen(port, () => console.log(`express-demo app listening on ${port}...`));