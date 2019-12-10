const express = require('express')

const app = express()

app.get('/', (req, res) => res.send('Hello, world!'))

const PORT = 3001

app.listen(PORT, () => {
  console.log(`Running on port ${PORT}`)
})
