const db = require('./connection')

const clientsBaseQuery = `
  SELECT pms_clients.*,
    COALESCE(project_counts.project_per_client, 0) AS project_per_client
  FROM pms_clients
  LEFT JOIN (
    SELECT project_client_id, COUNT(*) AS project_per_client
    FROM pms_projects
    GROUP BY project_client_id
  ) AS project_counts ON project_counts.project_client_id = pms_clients.client_id
`

const getClients = async (orderBy = 'client_name', orderDirection = 'asc') => {
  const query =
    clientsBaseQuery +
    ' ORDER BY ' +
    orderBy +
    ' ' +
    orderDirection

  const [clients] = await db.query(query)
  return clients
}

const getClientsRange = async (from, perPage, orderBy, orderDirection) => {
  const query =
    clientsBaseQuery +
    ' ORDER BY ' +
    orderBy +
    ' ' +
    orderDirection +
    ' LIMIT ?,?'

  const [clients] = await db.query(query, [from, perPage])
  return clients
}

const getSingleClient = async (client_id) => {
  const [client] = await db.query(
    clientsBaseQuery + ' WHERE pms_clients.client_id = ?',
    [client_id]
  )
  return client[0]
}

const getDuplicateClient = async (client_name) => {
  const [client] = await db.query(
    'SELECT client_name FROM pms_clients WHERE client_name =?',
    [client_name]
  )
  return client[0]
}

const addClient = async (client) => {
  const {
    client_name,
    client_adresse,
    client_contact,
    client_phone,
    client_fax,
    client_email,
    client_site,
  } = client

  await db.query(
    `INSERT INTO pms_clients (client_name, client_adresse, client_contact,client_phone,client_fax, client_email, client_site) VALUES (?,?,?,?,?,?,?)`,
    [
      client_name,
      client_adresse,
      client_contact,
      client_phone,
      client_fax,
      client_email,
      client_site,
    ]
  )
}

const updateClient = async (client, client_id) => {
  const {
    client_name,
    client_adresse,
    client_contact,
    client_phone,
    client_fax,
    client_email,
    client_site,
  } = client
  await db.query(
    'UPDATE pms_clients SET client_name=? , client_adresse=?, client_contact=?,client_phone=?, client_fax=?, client_email=?, client_site=? WHERE client_id=?',
    [
      client_name,
      client_adresse,
      client_contact,
      client_phone,
      client_fax,
      client_email,
      client_site,
      client_id,
    ]
  )
}

const deleteClient = async (client_id) => {
  await db.query('DELETE FROM pms_clients WHERE client_id=?', [client_id])
}

module.exports = {
  getClients,
  getClientsRange,
  getSingleClient,
  getDuplicateClient,
  addClient,
  updateClient,
  deleteClient,
}
