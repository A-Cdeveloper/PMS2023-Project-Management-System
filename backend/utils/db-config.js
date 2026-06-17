const dotenv = require('dotenv')
dotenv.config()

const TIDB_SSL = { minVersion: 'TLSv1.2', rejectUnauthorized: true }

function needsSsl(host) {
  return (
    process.env.DB_SSL === 'true' ||
    process.env.DATABASE_URL ||
    (host && host.includes('tidbcloud.com'))
  )
}

function getDbConfig() {
  if (process.env.DATABASE_URL) {
    const url = new URL(process.env.DATABASE_URL)
    const config = {
      host: url.hostname,
      port: Number(url.port) || 3306,
      user: decodeURIComponent(url.username),
      password: decodeURIComponent(url.password),
      database: url.pathname.replace(/^\//, ''),
      timezone: 'UTC',
      ssl: TIDB_SSL,
    }
    return config
  }

  const host = process.env.HOST
  const config = {
    host,
    user: process.env.DB_USER || process.env.USER,
    password: process.env.PASSWORD,
    database: process.env.DATABASE,
    timezone: 'UTC',
  }

  if (process.env.DB_PORT) {
    config.port = Number(process.env.DB_PORT)
  }

  if (needsSsl(host)) {
    config.ssl = TIDB_SSL
  }

  return config
}

function getDatabaseName() {
  if (process.env.DATABASE_URL) {
    return new URL(process.env.DATABASE_URL).pathname.replace(/^\//, '')
  }
  return process.env.DATABASE
}

module.exports = { getDbConfig, getDatabaseName }
