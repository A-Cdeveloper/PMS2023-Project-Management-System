const express = require('express')
const dbfunctions = require('../utils/tasks-query')
const dbfunctionsHelper1 = require('../utils/projects-query')
const dbfunctionsHelper2 = require('../utils/clients-query')
const verifyToken = require('../authMw')
const router = express.Router()
// /users

router.get('/tasks/:startDate/:endDate', verifyToken, async (req, res) => {
  const { startDate, endDate } = req.params
  const tasks = await dbfunctions.getTasks(startDate, endDate)
  if (tasks.length == 0) {
    return res.status(400).json({ message: 'Tasks list is empty.' })
  }
  //return res.status(231).send({ tasks: tasks.length })
  return res.status(231).send(tasks)
})

router.get(
  '/filter/:from/:perPage/:startDate/:endDate',
  verifyToken,
  async (req, res) => {
    const { from, perPage, startDate, endDate } = req.params

    const tasks = await dbfunctions.getTasksRange(
      +from,
      +perPage,
      startDate,
      endDate
    )
    if (tasks.length == 0) {
      return res.status(400).json({ message: 'Tasks list is empty.' })
    }
    return res.status(231).send(tasks)
  }
)

///////////////////////////////Extra route //////////////////////////////////////////////////
router.get('/tasksbyclient/:client_id', async (req, res) => {
  const { client_id } = req.params
  const tasks = await dbfunctions.getTasksByClient(client_id)
  if (tasks.length == 0) {
    return res.status(400).json({ message: 'Tasks list is empty.' })
  }

  return res.status(231).send(tasks)
})

router.get('/tasksbyproject/:project_id', async (req, res) => {
  const { project_id } = req.params
  const tasks = await dbfunctions.getTasksByProject(project_id)
  if (tasks.length == 0) {
    return res.status(400).json({ message: 'Tasks list is empty.' })
  }

  return res.status(231).send(tasks)
})

/////////////////////////////////////////////////////////////////////////////////

router.get('/task/:task_id', verifyToken, async (req, res) => {
  const tid = req.params.task_id
  const task = await dbfunctions.getSingleTask(tid)
  if (!task) {
    return res.status(400).json({ message: 'Task not exist.' })
  }
  const project = await dbfunctionsHelper1.getSingleProject(
    null,
    task.task_project_id
  )
  if (!project) {
    return res
      .status(400)
      .json({ message: 'Task is not connected to any project.' })
  }

  const client = await dbfunctionsHelper2.getSingleClient(
    project.project_client_id
  )

  if (!client) {
    return res
      .status(400)
      .json({ message: 'Task is not connected to any client.' })
  }

  const { project_name } = project
  const { client_name, client_id } = client
  res.status(231).send({ ...task, project_name, client_name, client_id })
})

router.post('/new', verifyToken, async (req, res) => {
  const { newTask: postTask } = req.body
  await dbfunctions.addTask(postTask)
  res.status(231).json({ message: 'Task succesfully added.' })
})

router.post('/:task_id/duplicate', verifyToken, async (req, res) => {
  const tid = req.params.task_id
  const task = await dbfunctions.getSingleTask(tid)
  if (!task) {
    return res.status(400).json({ message: 'Task not exist.' })
  }
  let {
    task_project_id,
    task_name,
    task_description,
    task_notice,
    task_add_date,
    task_priority,
    task_plan_time,
    task_start_time,
    task_end_time,
    task_status,
  } = task
  task_name = `${task_name} - COPY`
  task_status = `open`
  task_add_date = new Date()
  task_start_time = null
  task_end_time = null

  await dbfunctions.addTask({
    task_project_id,
    task_name,
    task_description,
    task_notice,
    task_add_date,
    task_priority,
    task_plan_time,
    task_start_time,
    task_end_time,
    task_status,
  })
  res.status(231).json({ task, message: 'Task succesfully copied.' })
})

router.patch('/:task_id/edit', verifyToken, async (req, res) => {
  const { updatedTask: postTask } = req.body
  const tid = req.params.task_id
  const task = await dbfunctions.getSingleTask(tid)
  if (!task) {
    return res.status(400).json({ message: 'Task not exist.' })
  }
  await dbfunctions.updateTask(postTask, tid)
  res.status(231).json({ task, message: 'Task succesfully updated.' })
})

router.delete('/:task_id/delete', verifyToken, async (req, res) => {
  const tid = req.params.task_id
  const task = await dbfunctions.getSingleTask(tid)
  if (!task) {
    return res.status(400).json({ message: 'Task not exist.' })
  }
  await dbfunctions.deleteTask(tid)
  res.status(231).json({ task, message: 'Task succesfully deleted.' })
})

module.exports = router
