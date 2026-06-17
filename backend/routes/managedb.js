const express = require('express')
mysqldump = require('mysqldump')
const Importer = require('mysql-import')
const fs = require('fs').promises
const dotenv = require('dotenv')
dotenv.config()

const getConnObj = () => {
  if (process.env.DATABASE_URL) {
    const url = new URL(process.env.DATABASE_URL)
    return {
      host: url.hostname,
      port: Number(url.port) || 3306,
      user: decodeURIComponent(url.username),
      password: decodeURIComponent(url.password),
      database: url.pathname.replace(/^\//, ''),
      ssl: { rejectUnauthorized: true },
    }
  }

  const connObj = {
    host: process.env.HOST,
    user: process.env.USER,
    password: process.env.PASSWORD,
    database: process.env.DATABASE,
  }

  if (process.env.DB_PORT) connObj.port = Number(process.env.DB_PORT)
  if (process.env.DB_SSL === 'true') {
    connObj.ssl = { rejectUnauthorized: true }
  }

  return connObj
}

const dumpFileName = `${new Date(Date.now())
  .toLocaleDateString()
  .replaceAll('/', '-')}.sql`

const importer = new Importer(getConnObj())

const dbfunctions = require('../utils/settings-query')
const dbfunctions2 = require('../utils/managedb-query')
const verifyToken = require('../authMw')

const router = express.Router()

router.patch('/backup', verifyToken, async (req, res) => {
  const results = mysqldump({
    connection: getConnObj(),
    dumpToFile: `./backup/${dumpFileName}`,
    dump: {
      excludeTables: ['pms_users'],
    },
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
router.post('/restore', verifyToken, async (req, res) => {
  await dbfunctions2.clearAllTables()
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
