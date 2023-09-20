const express = require('express')
const dbfunctions = require('../utils/settings-query')

const router = express.Router()

router.get('/', async (req, res) => {
  const settings = await dbfunctions.getSettings()
  if (!settings) {
    return res.status(400).json({ message: 'No settings.' })
  }
  return res.status(231).send(settings)
})

router.patch('/edit', async (req, res) => {
  const settings = req.body

  await dbfunctions.updateSettings(settings)
  res.status(231).json({ message: 'Settings succesfully updated.' })
})

module.exports = router
