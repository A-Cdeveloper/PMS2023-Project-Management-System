const db = require('./connection')

const getSettings = async () => {
  const query = 'SELECT * FROM pms_settings'
  const [settings] = await db.query(query)
  return settings[0]
}

// getSettings().then((res) => console.log(res))

const updateSettings = async (settings) => {
  const {
    clients_per_page,
    projects_per_page,
    tasks_per_page,
    users_per_page,
    services_per_page,
    offers_per_page,
    regular_whour_price,
    special_whour_price,
    company_logo,
    company_name,
    company_adresse,
  } = settings
  await db.query(
    'UPDATE pms_settings SET clients_per_page=?,projects_per_page=?,tasks_per_page=?,users_per_page=?,services_per_page=?,offers_per_page=?,regular_whour_price=?,special_whour_price=?,company_logo=?,company_name=?,company_adresse=?',
    [
      clients_per_page,
      projects_per_page,
      tasks_per_page,
      users_per_page,
      services_per_page,
      offers_per_page,
      regular_whour_price,
      special_whour_price,
      company_logo,
      company_name,
      company_adresse,
    ]
  )
}

const setBackupPath = async (backupPath) => {
  await db.query('UPDATE pms_settings SET backup_path = ?', [backupPath])
}

// updateSettings().then((res) => console.log(res))

module.exports = {
  getSettings,
  updateSettings,
  setBackupPath,
}
