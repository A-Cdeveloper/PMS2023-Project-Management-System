const express = require('express')
const dbfunctions = require('../utils/settings-query')
const verifyToken = require('../authMw')

const dbfunctionsUsers = require('../utils/users-query')
const dbfunctionsProjects = require('../utils/projects-query')
const dbfunctionsTasks = require('../utils/tasks-query')
const dbfunctionsClients = require('../utils/clients-query')
const dbfunctionsServices = require('../utils/services-query')

const router = express.Router()

router.get('/', async (req, res) => {
  const appSettings = await dbfunctions.getSettings()
  if (!appSettings) {
    return res.status(400).json({ message: 'No settings.' })
  }

  const users = await dbfunctionsUsers.getUsers()
  const projects = await dbfunctionsProjects.getProjects()
  const tasks = await dbfunctionsTasks.getAllTasks()
  const clients = await dbfunctionsClients.getClients()
  const services = await dbfunctionsServices.getServices()

  const settings = {
    ...appSettings,
    number_of_users: users.length || 0,
    number_of_projects: projects.length || 0,
    number_of_tasks: tasks.length || 0,
    number_of_clients: clients.length || 0,
    number_of_services: services.length || 0,
  }

  return res.status(231).send(settings)
})

router.patch('/edit', verifyToken, async (req, res) => {
  const { updatedSettings: settings } = req.body

  await dbfunctions.updateSettings(settings)
  res.status(231).json({ message: 'Settings succesfully updated.' })
})

module.exports = router
