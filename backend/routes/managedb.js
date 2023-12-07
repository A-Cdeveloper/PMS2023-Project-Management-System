const express = require('express')
mysqldump = require('mysqldump')
const Importer = require('mysql-import')
const fs = require('fs').promises
const dotenv = require('dotenv')
dotenv.config()

const connObj = {
  host: process.env.HOST,
  user: process.env.USER,
  password: process.env.PASSWORD,
  database: process.env.DATABASE,
}

const dumpFileName = `${new Date(Date.now())
  .toLocaleDateString()
  .replaceAll('/', '-')}.sql`

const importer = new Importer(connObj)

const dbfunctions = require('../utils/settings-query')
const dbfunctions2 = require('../utils/managedb-query')
const verifyToken = require('../authMw')

const router = express.Router()

router.patch('/backup', verifyToken, async (req, res) => {
  const results = mysqldump({
    connection: connObj,
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

////////////////////////
router.post('/initial-state', async (req, res) => {
  await dbfunctions2.resetToInitialState()
  return res.status(231).json({ message: 'System set to initial state.' })
})

////////////////////////
router.post('/restore', async (req, res) => {
  importer
    .import(`./public/backup/${dumpFileName}`)
    .then(() => {
      var files_imported = importer.getImported()
      res.status(231).json({ message: 'System was restored from backup' })
    })
    .catch((error) => {
      return res
        .status(400)
        .json({ message: `System restore failed. ${error}` })
    })
})

module.exports = router
