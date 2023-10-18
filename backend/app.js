const express = require('express')
const fileUpload = require('express-fileupload')
const dotenv = require('dotenv')
dotenv.config()
const PORT = process.env.PORT

const app = express()
app.use(express.json())
app.use(
  fileUpload({
    limits: {
      fileSize: 10000000, // Around 10MB
    },
    abortOnLimit: true,
  })
)
app.use(express.static('public'))

app.use((req, res, next) => {
  res.setHeader('Access-Control-Allow-Origin', '*')
  res.setHeader('Access-Control-Allow-Methods', 'GET,POST,PATCH,DELETE')
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type,Authorization')
  next()
})

// Routes
const usersRoute = require('./routes/users')
const clientsRoute = require('./routes/clients')
const projectsRoute = require('./routes/projects')
const tasksRoute = require('./routes/tasks')
const servicesRoute = require('./routes/services')
const settingsRoute = require('./routes/settings')
const uploadRoute = require('./routes/upload')
app.use('/users', usersRoute)
app.use('/clients', clientsRoute)
app.use('/projects', projectsRoute)
app.use('/tasks', tasksRoute)
app.use('/services', servicesRoute)
app.use('/settings', settingsRoute)
app.use('/upload', uploadRoute)
//

// error handler
app.use((req, res, next) => {
  const error = new Error('Not found.')
  error.status = 404
  next(error)
})

// error handler middleware
app.use((error, req, res, next) => {
  res.status(error.status || 500).send({
    error: {
      status: error.status || 500,
      message: error.message || 'Server Error',
    },
  })
})

app.listen(8080, () => {
  console.log(`Server run on port ${PORT}`)
})
