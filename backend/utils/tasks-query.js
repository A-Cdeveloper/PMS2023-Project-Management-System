const db = require('./connection')

const getAllTasks = async () => {
  const [tasks] = await db.query(
    'SELECT pms_tasks.*, pms_clients.client_name,client_id, pms_projects.project_name FROM pms_tasks, pms_clients, pms_projects WHERE project_client_id=client_id AND task_project_id = project_id ORDER BY task_add_date DESC'
  )
  return tasks
}

const getTasks = async (startIntervalDate, endItervalDate) => {
  const [tasks] = await db.query(
    'SELECT pms_tasks.*, pms_clients.client_name,client_id, pms_projects.project_name FROM pms_tasks, pms_clients, pms_projects WHERE project_client_id=client_id AND task_project_id = project_id AND DATE(task_add_date) BETWEEN "' +
      startIntervalDate +
      '" AND "' +
      endItervalDate +
      '" ORDER BY task_add_date DESC'
  )
  return tasks
}

const getTasksRange = async (
  from,
  perPage,
  startIntervalDate,
  endItervalDate
) => {
  const query =
    'SELECT pms_tasks.*, pms_clients.client_name,client_id, pms_projects.project_name FROM pms_tasks, pms_clients, pms_projects WHERE project_client_id=client_id AND task_project_id = project_id AND DATE(task_add_date) BETWEEN "' +
    startIntervalDate +
    '" AND "' +
    endItervalDate +
    '" ORDER BY task_add_date DESC LIMIT ?,?'

  const [tasks] = await db.query(query, [from, perPage])
  return tasks
}

////////////////////////////////////////////////////////

const getTasksByStatus = async (taskStatus) => {
  const [tasks] = await db.query(
    'SELECT pms_tasks.* FROM pms_tasks WHERE task_status=? ORDER BY task_add_date DESC',
    [taskStatus]
  )
  return tasks
}

const getTasksByClient = async (sclient_id) => {
  const query =
    'SELECT pms_tasks.*,pms_clients.client_name FROM pms_projects,pms_clients, pms_tasks WHERE client_id = project_client_id  AND project_client_id = ? AND task_project_id = pms_projects.project_id ORDER BY pms_tasks.task_status DESC, pms_tasks.task_add_date DESC'

  const [tasks] = await db.query(query, [sclient_id])
  return tasks
}

const getTasksByProject = async (sproject_id) => {
  const query =
    'SELECT pms_tasks.*, pms_projects.project_name FROM pms_projects,pms_tasks WHERE task_project_id = ? AND task_project_id = pms_projects.project_id ORDER BY pms_tasks.task_status DESC, pms_tasks.task_add_date DESC'

  const [tasks] = await db.query(query, [sproject_id])
  return tasks
}

////////////////////////////////////////////////////////
// getTasksByProject(22).then((res) => console.log(res))

const getSingleTask = async (task_id) => {
  const [task] = await db.query('SELECT * FROM pms_tasks WHERE task_id=?', [
    task_id,
  ])
  return task[0]
}

const addTask = async (task) => {
  const {
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
  await db.query(
    'INSERT INTO pms_tasks (task_project_id,task_name,task_description,task_notice,task_add_date,task_priority,task_plan_time,task_start_time,task_end_time,task_status) VALUES (?,?,?,?,?,?,?,?,?,?)',
    [
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
    ]
  )
}

const updateTask = async (task, task_id) => {
  const {
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
    task_price_per_hour,
    task_price,
    task_client_adresse,
    task_invoice_date,
  } = task
  await db.query(
    'UPDATE pms_tasks SET task_project_id=? , task_name=?, task_description=?, task_notice=?, task_add_date=?, task_priority=?, task_plan_time=?, task_start_time=?, task_end_time=?, task_status=?, task_price_per_hour=?, task_price=?, task_client_adresse=?, task_invoice_date=? WHERE task_id=?',
    [
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
      task_price_per_hour,
      task_price,
      task_client_adresse,
      task_invoice_date,
      task_id,
    ]
  )
}

const deleteTask = async (task_id) => {
  await db.query('DELETE FROM pms_tasks WHERE task_id=?', [task_id])
}

module.exports = {
  getAllTasks,
  getTasks,
  getTasksRange,
  getSingleTask,
  addTask,
  updateTask,
  deleteTask,
  getTasksByClient,
  getTasksByProject,
  getTasksByStatus,
}
