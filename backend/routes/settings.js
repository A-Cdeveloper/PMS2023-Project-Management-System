const express = require('express')
const dbfunctions = require('../utils/settings-query')
const verifyToken = require('../authMw')

const router = express.Router()

router.get('/', verifyToken, async (req, res) => {
  const settings = await dbfunctions.getSettings()
  if (!settings) {
    return res.status(400).json({ message: 'No settings.' })
  }
  return res.status(231).send(settings)
})

router.patch('/edit', verifyToken, async (req, res) => {
  const { updatedSettings: settings } = req.body

  await dbfunctions.updateSettings(settings)
  res.status(231).json({ message: 'Settings succesfully updated.' })
})

module.exports = router
