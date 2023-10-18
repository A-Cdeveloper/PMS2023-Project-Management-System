const express = require('express')
const dbfunctions = require('../utils/services-query')
const verifyToken = require('../authMw')

const router = express.Router()

/// full service list
router.get('/:order', verifyToken, async (req, res) => {
  const { order } = req.params
  const [orderBy, orderDirection] = order.split('=')
  const services = await dbfunctions.getServices(orderBy, orderDirection)
  if (services.length == 0) {
    return res.status(400).json({ message: 'Service list is empty.' })
  }
  return res.status(231).send(services)
})

/// filtered and limited service list
router.get('/filter/:from/:perPage/:order', verifyToken, async (req, res) => {
  const { from, perPage, order } = req.params
  const [orderBy, orderDirection] = order.split('=')

  const services = await dbfunctions.getServicesRange(
    +from,
    +perPage,
    orderBy,
    orderDirection
  )
  if (services.length == 0) {
    return res.status(400).json({ message: 'Service list is empty.' })
  }
  return res.status(231).send(services)
})

// // single client
// router.get('/client/:client_id', verifyToken, async (req, res) => {
//   const cid = req.params.client_id
//   const client = await dbfunctions.getSingleClient(cid)
//   if (!client || client.client_id === null) {
//     return res.status(400).json({ message: 'Client not exist.' })
//   }
//   res.status(231).send(client)
// })

// // new service
router.post('/new', verifyToken, async (req, res) => {
  const postService = req.body
  const service = await dbfunctions.getDuplicateService(
    postService.service_name
  )
  if (service) {
    return res.status(400).json({ message: 'Service already exist.' })
  }
  await dbfunctions.addService(postService)
  res.status(231).json({ message: 'Service succesfully added.' })
})

// // duplicate service
router.post('/:service_id/duplicate', verifyToken, async (req, res) => {
  const sid = req.params.service_id
  const service = await dbfunctions.getSingleService(sid)
  if (!service) {
    return res.status(400).json({ message: 'Service not exist.' })
  }

  service.service_name = `${service.service_name} - COPY`
  await dbfunctions.addService({
    ...service,
  })
  res.status(231).json({ service, message: 'Service succesfully duplicated.' })
})

// // edit service
router.patch('/:service_id/edit', async (req, res) => {
  const postService = req.body
  const sid = req.params.service_id
  const service = await dbfunctions.getSingleService(sid)
  if (!service) {
    return res.status(400).json({ message: 'Service not exist.' })
  }
  await dbfunctions.updateService(postService, sid)
  res.status(231).json({ service, message: 'Service succesfully updated.' })
})

// // delete service
router.delete('/:service_id/delete', verifyToken, async (req, res) => {
  const sid = req.params.service_id

  const service = await dbfunctions.getSingleService(sid)

  if (!service) {
    return res.status(400).json({ message: 'Service not exist.' })
  }
  await dbfunctions.deleteService(sid)
  res.status(231).json({ service, message: 'Service succesfully deleted.' })
})

module.exports = router
