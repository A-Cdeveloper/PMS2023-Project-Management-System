const mysql = require('mysql2')
const dotenv = require('dotenv')
dotenv.config()

function getDbConfig() {
  if (process.env.DATABASE_URL) {
    const url = new URL(process.env.DATABASE_URL)
    return {
      host: url.hostname,
      port: Number(url.port) || 3306,
      user: decodeURIComponent(url.username),
      password: decodeURIComponent(url.password),
      database: url.pathname.replace(/^\//, ''),
      ssl: { rejectUnauthorized: true },
      timezone: 'UTC',
    }
  }

  const config = {
    host: process.env.HOST,
    user: process.env.USER,
    password: process.env.PASSWORD,
    database: process.env.DATABASE,
    timezone: 'UTC',
  }

  if (process.env.DB_PORT) {
    config.port = Number(process.env.DB_PORT)
  }

  if (process.env.DB_SSL === 'true') {
    config.ssl = { rejectUnauthorized: true }
  }

  return config
}

const pool = mysql.createPool(getDbConfig()).promise()

module.exports = pool
