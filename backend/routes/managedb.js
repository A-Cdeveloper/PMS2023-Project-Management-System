const express = require('express')
mysqldump = require('mysqldump')
const fs = require('fs').promises

const dbfunctions = require('../utils/settings-query')
const dbfunctions2 = require('../utils/managedb-query')
const verifyToken = require('../authMw')

const router = express.Router()

router.patch('/backup', verifyToken, async (req, res) => {
  const dumpFileName = `${new Date(Date.now())
    .toLocaleString('en-US', { hour12: false })
    .replaceAll('/', '-')
    .replaceAll(', ', '-')
    .replaceAll(':', '-')}.sql`

  const results = mysqldump({
    connection: {
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'logindb',
    },
    dumpToFile: `./public/backup/${dumpFileName}`,
  })

  try {
    await results
    await dbfunctions.setBackupPath(
      `${process.env.BASE_URL}/backup/${dumpFileName}`
    )
    res.status(231).json({ message: 'Backup created.' })
  } catch (error) {
    await fs.unlink(`./public/backup/${dumpFileName}`)
    return res.status(400).json({ message: `Backup not created. ${error}` })
  }
})

router.post('/initial-state', async (req, res) => {
  await dbfunctions2.resetToInitialState()
  res.status(231).json({ message: 'System set to initial state.' })
})

module.exports = router
