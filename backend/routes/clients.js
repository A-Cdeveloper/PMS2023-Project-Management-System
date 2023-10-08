const express = require('express')
const dbfunctions = require('../utils/clients-query')
const verifyToken = require('../authMw')

const router = express.Router()

/// full clients list
router.get('/:order', verifyToken, async (req, res) => {
  const { order } = req.params
  const [orderBy, orderDirection] = order.split('=')
  const clients = await dbfunctions.getClients(orderBy, orderDirection)
  if (clients.length == 0) {
    return res.status(400).json({ message: 'Clients list is empty.' })
  }
  return res.status(231).send(clients)
})

/// filtered and limited clients list
router.get('/filter/:from/:perPage/:order', verifyToken, async (req, res) => {
  const { from, perPage, order } = req.params
  const [orderBy, orderDirection] = order.split('=')

  const clients = await dbfunctions.getClientsRange(
    +from,
    +perPage,
    orderBy,
    orderDirection
  )
  if (clients.length == 0) {
    return res.status(400).json({ message: 'Clients list is empty.' })
  }
  return res.status(231).send(clients)
})

// single client
router.get('/client/:client_id', verifyToken, async (req, res) => {
  const cid = req.params.client_id
  const client = await dbfunctions.getSingleClient(cid)
  if (!client || client.client_id === null) {
    return res.status(400).json({ message: 'Client not exist.' })
  }
  res.status(231).send(client)
})

// new client
router.post('/new', verifyToken, async (req, res) => {
  const { newClient: postClient } = req.body
  const client = await dbfunctions.getDuplicateClient(postClient.client_name)
  if (client) {
    return res.status(400).json({ message: 'Client already exist.' })
  }
  await dbfunctions.addClient(postClient)
  res.status(231).json({ message: 'Client succesfully added.' })
})

// duplicate client
router.post('/:client_id/duplicate', verifyToken, async (req, res) => {
  const cid = req.params.client_id
  const client = await dbfunctions.getSingleClient(cid)
  if (!client) {
    return res.status(400).json({ message: 'Client not exist.' })
  }

  client.client_name = `${client.client_name} - COPY`
  await dbfunctions.addClient({
    ...client,
  })
  res.status(231).json({ client, message: 'Client succesfully duplicated.' })
})

// edit client
router.patch('/:client_id/edit', verifyToken, async (req, res) => {
  const { updatedClient: postClient } = req.body
  const cid = req.params.client_id
  const client = await dbfunctions.getSingleClient(cid)
  if (!client) {
    return res.status(400).json({ message: 'Client not exist.' })
  }
  await dbfunctions.updateClient(postClient, cid)
  res.status(231).json({ client, message: 'Client succesfully updated.' })
})

// delete client
router.delete('/:client_id/delete', verifyToken, async (req, res) => {
  const cid = req.params.client_id

  const client = await dbfunctions.getSingleClient(cid)

  if (!client) {
    return res.status(400).json({ message: 'Client not exist.' })
  }
  await dbfunctions.deleteClient(cid)
  res.status(231).json({ client, message: 'Client succesfully deleted.' })
})

module.exports = router
