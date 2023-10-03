const express = require('express')
const dbfunctions = require('../utils/projects-query')
const dbfunctionsHelper = require('../utils/clients-query')

const router = express.Router()
// /users

router.get('/:order', async (req, res) => {
  const { order } = req.params
  const [orderBy, orderDirection] = order.split('=')
  const projects = await dbfunctions.getProjects(orderBy, orderDirection)
  if (projects.length == 0) {
    return res.status(400).json({ message: 'Projects list is empty.' })
  }

  return res.status(231).send(projects)
})

router.get('/filter/:from/:perPage/:order', async (req, res) => {
  const { from, perPage, order } = req.params
  const [orderBy, orderDirection] = order.split('=')
  const projects = await dbfunctions.getProjectsRange(
    +from,
    +perPage,
    orderBy,
    orderDirection
  )
  if (projects.length == 0) {
    return res.status(400).json({ message: 'Projects list is empty.' })
  }
  return res.status(231).send(projects)
})

router.get('/project/:project_id', async (req, res) => {
  const pid = req.params.project_id
  const project = await dbfunctions.getSingleProject(null, pid)
  if (!project) {
    return res.status(400).json({ message: 'Project not exist.' })
  }
  const client = await dbfunctionsHelper.getSingleClient(
    project.project_client_id
  )
  const { client_name } = client
  res.status(231).send({ ...project, client_name })
})

router.post('/new', async (req, res) => {
  const postProject = req.body
  const project = await dbfunctions.getSingleProject(
    postProject.project_name,
    null
  )
  if (project) {
    return res.status(400).json({ message: 'Project already exist.' })
  }
  await dbfunctions.addProject(postProject)
  res.status(231).json({ message: 'Project succesfully added.' })
})

router.post('/:project_id/duplicate', async (req, res) => {
  const pid = req.params.project_id
  const project = await dbfunctions.getSingleProject(null, pid)
  if (!project) {
    return res.status(400).json({ message: 'Project not exist.' })
  }
  let {
    project_client_id,
    project_name,
    project_url,
    project_platform,
    project_update,
    project_last_update,
    project_hosting,
    project_description,
    project_ftpdata,
    project_dbdata,
    project_start_date,
    project_end_date,
    project_status,
    project_online,
  } = project
  project_name = `${project_name} - COPY`
  await dbfunctions.addProject({
    project_client_id,
    project_name,
    project_url,
    project_platform,
    project_update,
    project_last_update,
    project_hosting,
    project_description,
    project_ftpdata,
    project_dbdata,
    project_start_date,
    project_end_date,
    project_status,
    project_online,
  })
  res.status(231).json({ project, message: 'Project succesfully copied.' })
})

router.patch('/:project_id/edit', async (req, res) => {
  const postProject = req.body
  const pid = req.params.project_id
  const project = await dbfunctions.getSingleProject(
    postProject.project_name,
    pid
  )
  if (!project) {
    return res.status(400).json({ message: 'Project not exist.' })
  }
  await dbfunctions.updateProject(postProject, pid)
  res.status(231).json({ project, message: 'Project succesfully updated.' })
})

router.delete('/:project_id/delete', async (req, res) => {
  const pid = req.params.project_id
  const project = await dbfunctions.getSingleProject(null, pid)
  if (!project) {
    return res.status(400).json({ message: 'Project not exist.' })
  }
  await dbfunctions.deleteProject(pid)
  res.status(231).json({ project, message: 'Project succesfully deleted.' })
})

module.exports = router
