const db = require('./connection')

const getServices = async (orderBy, orderDirection) => {
  const query =
    'SELECT  * FROM pms_services ORDER BY ' + orderBy + ' ' + orderDirection

  const [services] = await db.query(query)
  return services
}

const getServicesRange = async (from, perPage, orderBy, orderDirection) => {
  const query =
    'SELECT * FROM pms_services ORDER BY ' +
    orderBy +
    ' ' +
    orderDirection +
    ' LIMIT ?,?'

  const [services] = await db.query(query, [from, perPage])
  return services
}

const getSingleService = async (service_id) => {
  const [service] = await db.query(
    'SELECT * FROM pms_services WHERE service_id =?',
    [service_id]
  )
  return service[0]
}

const getDuplicateService = async (service_name) => {
  const [service] = await db.query(
    'SELECT * FROM pms_services WHERE service_name =?',
    [service_name]
  )
  return service[0]
}

const addService = async (service) => {
  const { service_name, service_description, service_price, service_type } =
    service

  await db.query(
    `INSERT INTO pms_services (service_name, service_description, service_price, service_type) VALUES (?,?,?,?)`,
    [service_name, service_description, service_price, service_type]
  )
}

const updateService = async (service, service_id) => {
  const { service_name, service_description, service_price, service_type } =
    service
  await db.query(
    'UPDATE pms_services SET service_name=? , service_description=?, service_price=?,service_type=?  WHERE service_id=?',
    [service_name, service_description, service_price, service_type, service_id]
  )
}

const deleteService = async (service_id) => {
  await db.query('DELETE FROM pms_services WHERE service_id=?', [service_id])
}

module.exports = {
  getServices,
  getServicesRange,
  getSingleService,
  getDuplicateService,
  addService,
  updateService,
  deleteService,
}
