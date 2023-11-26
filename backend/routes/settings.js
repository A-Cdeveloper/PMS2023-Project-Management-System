const express = require('express')
const dbfunctions = require('../utils/settings-query')
const verifyToken = require('../authMw')

const dbfunctionsUsers = require('../utils/users-query')

const router = express.Router()

router.get('/', async (req, res) => {
  const appSettings = await dbfunctions.getSettings()
  if (!appSettings) {
    return res.status(400).json({ message: 'No settings.' })
  }

  const users = await dbfunctionsUsers.getUsers()

  const settings = {
    ...appSettings,
    number_of_users: users.length,
  }

  return res.status(231).send(settings)
})

router.patch('/edit', verifyToken, async (req, res) => {
  const { updatedSettings: settings } = req.body

  await dbfunctions.updateSettings(settings)
  res.status(231).json({ message: 'Settings succesfully updated.' })
})

module.exports = router
