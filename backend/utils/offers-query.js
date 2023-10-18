const db = require('./connection')

const getOffers = async (orderBy, orderDirection) => {
  const query =
    'SELECT  pms_offers.*, pms_clients.client_name,pms_clients.client_adresse, pms_projects.project_name  FROM pms_offers, pms_clients, pms_projects WHERE pms_offers.offer_client_id = pms_clients.client_id AND  pms_offers.offer_project_id = pms_projects.project_id ORDER BY ' +
    orderBy +
    ' ' +
    orderDirection

  const [offers] = await db.query(query)
  return offers
}

const getOffersRange = async (from, perPage, orderBy, orderDirection) => {
  const query =
    'SELECT  pms_offers.*, pms_clients.client_name,pms_clients.client_adresse, pms_projects.project_name  FROM pms_offers, pms_clients, pms_projects WHERE pms_offers.offer_client_id = pms_clients.client_id AND  pms_offers.offer_project_id = pms_projects.project_id ORDER BY ' +
    orderBy +
    ' ' +
    orderDirection +
    ' LIMIT ?,?'

  const [offers] = await db.query(query, [from, perPage])
  return offers
}

const getSingleService = async (offer_id) => {
  const [offer] = await db.query('SELECT * FROM pms_offers WHERE offer_id =?', [
    offer_id,
  ])
  return offer[0]
}

const getDuplicateService = async (offer_name) => {
  const [offer] = await db.query(
    'SELECT * FROM pms_offers WHERE offer_name =?',
    [offer_name]
  )
  return offer[0]
}

const addService = async (offer) => {
  const {
    offer_name,
    offer_description,
    offer_price_hour,
    offer_price_total,
    offer_type,
  } = offer

  await db.query(
    `INSERT INTO pms_offers (offer_name, offer_description, offer_price_hour,offer_price_total, offer_type) VALUES (?,?,?,?,?)`,
    [
      offer_name,
      offer_description,
      offer_price_hour,
      offer_price_total,
      offer_type,
    ]
  )
}

const updateService = async (offer, offer_id) => {
  const {
    offer_name,
    offer_description,
    offer_price_hour,
    offer_price_total,
    offer_type,
  } = offer
  await db.query(
    'UPDATE pms_offers SET offer_name=? , offer_description=?, offer_price_hour=?,offer_price_total=?,offer_type=?  WHERE offer_id=?',
    [
      offer_name,
      offer_description,
      offer_price_hour,
      offer_price_total,
      offer_type,
      offer_id,
    ]
  )
}

const deleteService = async (offer_id) => {
  await db.query('DELETE FROM pms_offers WHERE offer_id=?', [offer_id])
}

module.exports = {
  getOffers,
  getOffersRange,
  getSingleService,
  getDuplicateService,
  addService,
  updateService,
  deleteService,
}
