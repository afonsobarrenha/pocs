const express = require('express');
const router = express.Router();

// Welcome
router.get('/', (req, res) => {
    res.render('index', {"title": 'express-demo', message: 'hello world from express-demo!'})
})

module.exports = router;