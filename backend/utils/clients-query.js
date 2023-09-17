const db = require('./connection')

const getClients = async () => {
  const query = 'SELECT * FROM pms_clients ORDER BY pms_clients.client_name ASC'

  const [clients] = await db.query(query)
  return clients
}

const getClientsRange = async (from, number, order) => {
  const query =
    'SELECT * FROM pms_clients ORDER BY pms_clients.client_name ' +
    order +
    ' LIMIT ?,?'

  const [clients] = await db.query(query, [from, number])
  return clients
}

const getSingleClient = async (client_name, client_id) => {
  const [client] = await db.query(
    'SELECT * FROM pms_clients WHERE client_name=? OR client_id=?',
    [client_name, client_id]
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
    'INSERT INTO pms_clients (client_name, client_adresse, client_contact,client_phone,client_fax, client_email, client_site) VALUES (?,?,?,?,?,?,?)',
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
    client_adresse,
    client_contact,
    client_phone,
    client_fax,
    client_email,
    client_site,
  } = client
  await db.query(
    'UPDATE pms_clients SET client_name=? , client_adresse=?, client_contact=?,client_contact=?,client_phone=?, client_fax=?, client_site=? WHERE client_id=?',
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
  // getClientsOrdering,
  getClientsRange,
  getSingleClient,
  addClient,
  updateClient,
  deleteClient,
}
