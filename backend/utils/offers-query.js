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

const getSingleOffer = async (offer_id) => {
  const [offer] = await db.query(
    'SELECT  pms_offers.*, pms_clients.client_name,pms_clients.client_adresse, pms_projects.project_name  FROM pms_offers, pms_clients, pms_projects WHERE pms_offers.offer_client_id = pms_clients.client_id AND  pms_offers.offer_project_id = pms_projects.project_id AND offer_id =?',
    [offer_id]
  )
  return offer[0]
}

const getDuplicateOffer = async (offer_number) => {
  const [offer] = await db.query(
    'SELECT * FROM pms_offers WHERE offer_number =?',
    [offer_number]
  )
  return offer[0]
}

const addOffer = async (offer) => {
  const {
    offer_number,
    offer_client_id,
    offer_client_adresse,
    offer_project_id,
    offer_type,
    offer_caption,
    offer_date,
    offer_notice,
    services,
    offer_price,
  } = offer

  await db.query(
    `INSERT INTO pms_offers (offer_number,offer_client_id,offer_client_adresse,offer_project_id,offer_type,offer_caption,offer_date,offer_notice,services,offer_price) VALUES (?,?,?,?,?,?,?,?,?,?)`,
    [
      offer_number,
      offer_client_id,
      offer_client_adresse,
      offer_project_id,
      offer_type,
      offer_caption,
      offer_date,
      offer_notice,
      services,
      offer_price,
    ]
  )
}

const updateOffer = async (offer, offer_id) => {
  const {
    offer_number,
    offer_client_id,
    offer_client_adresse,
    offer_project_id,
    offer_type,
    offer_caption,
    offer_date,
    offer_notice,
    services,
    offer_price,
  } = offer
  await db.query(
    'UPDATE pms_offers SET offer_number=?, offer_client_id=?,offer_client_adresse=?,offer_project_id=?,offer_type=?,offer_caption=?,offer_date=?,offer_notice=?,services=?,offer_price=?  WHERE offer_id=?',
    [
      offer_number,
      offer_client_id,
      offer_client_adresse,
      offer_project_id,
      offer_type,
      offer_caption,
      offer_date,
      offer_notice,
      services,
      offer_price,
      offer_id,
    ]
  )
}

const deleteOffer = async (offer_id) => {
  await db.query('DELETE FROM pms_offers WHERE offer_id=?', [offer_id])
}

module.exports = {
  getOffers,
  getOffersRange,
  getSingleOffer,
  getDuplicateOffer,
  addOffer,
  updateOffer,
  deleteOffer,
}
