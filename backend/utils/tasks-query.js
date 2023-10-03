const db = require('./connection')

const getTasks = async (startIntervalDate, endItervalDate) => {
  const [tasks] = await db.query(
    'SELECT pms_tasks.*, pms_clients.client_name,client_id, pms_projects.project_name FROM pms_tasks, pms_clients, pms_projects WHERE project_client_id=client_id AND task_project_id = project_id AND task_add_date BETWEEN CAST("' +
      startIntervalDate +
      '" AS DATE) AND CAST("' +
      endItervalDate +
      '" AS DATE) ORDER BY task_add_date DESC'
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
    'SELECT pms_tasks.*, pms_clients.client_name,client_id, pms_projects.project_name FROM pms_tasks, pms_clients, pms_projects WHERE project_client_id=client_id AND task_project_id = project_id AND task_add_date BETWEEN CAST("' +
    startIntervalDate +
    '" AS DATE) AND CAST("' +
    endItervalDate +
    '" AS DATE) ORDER BY task_add_date DESC LIMIT ?,?'

  const [tasks] = await db.query(query, [from, perPage])
  return tasks
}

const getSingleTask = async (task_name, task_id) => {
  const [task] = await db.query(
    'SELECT * FROM pms_tasks WHERE task_name=? OR task_id=?',
    [task_name, task_id]
  )
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
  } = task
  await db.query(
    'UPDATE pms_tasks SET task_project_id=? , task_name=?, task_description=?, task_notice=?, task_add_date=?, task_priority=?, task_plan_time=?, task_start_time=?, task_end_time=?, task_status=? WHERE task_id=?',
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
      task_id,
    ]
  )
}

const deleteTask = async (task_id) => {
  await db.query('DELETE FROM pms_tasks WHERE task_id=?', [task_id])
}

module.exports = {
  getTasks,
  getTasksRange,
  getSingleTask,
  addTask,
  updateTask,
  deleteTask,
}
