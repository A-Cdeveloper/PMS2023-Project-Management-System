const db = require('./connection')
const { getDatabaseName } = require('./db-config')
const dbfunctions = require('./settings-query')

const clearAllTables = async () => {
  const [tables] = await db.query('SHOW TABLES')
  let res

  tables.forEach((table) => {
    const tableName = table[`Tables_in_${getDatabaseName()}`]
    const query = `TRUNCATE TABLE ${tableName}`
    res = db.query(query)
  })

  return res
}

const resetToInitialState = async () => {
  const [tables] = await db.query('SHOW TABLES')
  let res

  tables.forEach((table) => {
    const tableName = table[`Tables_in_${getDatabaseName()}`]
    if (tableName === 'pms_users' || tableName === 'pms_settings') {
      dbfunctions.updateSettings({
        clients_per_page: 10,
        projects_per_page: 10,
        tasks_per_page: 10,
        users_per_page: 10,
        services_per_page: 10,
        offers_per_page: 10,
        regular_whour_price: 90,
        special_whour_price: 70,
        company_logo: `${process.env.BASE_URL}/demo-logo.png`,
        company_name: 'Demo company',
        company_adresse: 'Demo company adresse',
        backup_path: '',
      })
      return
    }
    const query = `TRUNCATE TABLE ${tableName}`
    res = db.query(query)
  })

  return res
}

module.exports = {
  resetToInitialState,
  clearAllTables,
}
