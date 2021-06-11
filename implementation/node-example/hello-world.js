const express = require('express')
const app = express()
const port = 3000

// GET method route
app.get('/', function (req, res) {
  res.send('GET request to the homepage')
})
  
// POST method route
app.post('/', function (req, res) {
  res.send('POST request to the homepage')
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})