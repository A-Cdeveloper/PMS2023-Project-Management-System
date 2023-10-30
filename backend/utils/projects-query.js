const db = require('./connection')

const getProjects = async (orderBy, orderDirection) => {
  const query =
    'SELECT pms_projects.*,pms_clients.client_name, count(task_project_id) as task_per_project FROM pms_projects LEFT JOIN pms_tasks ON project_id = task_project_id LEFT JOIN pms_clients ON client_id = project_client_id GROUP BY project_id ORDER BY ' +
    orderBy +
    ' ' +
    orderDirection

  const [projects] = await db.query(query)
  return projects
}

const getProjectsRange = async (from, perPage, orderBy, orderDirection) => {
  const query =
    'SELECT pms_projects.*,pms_clients.client_name, count(task_project_id) as task_per_project FROM pms_projects LEFT JOIN pms_tasks ON project_id = task_project_id LEFT JOIN pms_clients ON client_id = project_client_id GROUP BY project_id ORDER BY ' +
    orderBy +
    ' ' +
    orderDirection +
    ' LIMIT ?,?'

  const [projects] = await db.query(query, [from, perPage])
  return projects
}

////////////////////////////////////////////////////////
const getProjectsByClient = async (sclient_id) => {
  const query =
    'SELECT pms_projects.* FROM pms_projects,pms_clients WHERE client_id = project_client_id AND project_client_id = ? ORDER BY pms_projects.project_status DESC, pms_projects.project_end_date DESC'

  const [projects] = await db.query(query, [sclient_id])
  return projects
}

////////////////////////////////////////////////////////

// getProjectsByClient(2).then((res) => console.log(res))

const getSingleProject = async (project_name, project_id) => {
  const [project] = await db.query(
    //'SELECT * FROM pms_projects WHERE project_name=? OR project_id=?',
    'SELECT pms_projects.*,pms_clients.client_name, count(task_project_id) as task_per_project FROM pms_projects LEFT JOIN pms_tasks ON project_id = task_project_id LEFT JOIN pms_clients ON client_id = project_client_id WHERE (project_name=? OR project_id = ?)',
    [project_name, project_id]
  )
  return project[0]
}

const getDuplicateProject = async (project_name) => {
  const [project] = await db.query(
    'SELECT project_name FROM pms_projects WHERE project_name =?',
    [project_name]
  )
  return project[0]
}

const addProject = async (project) => {
  const {
    project_client_id,
    project_name,
    project_url,
    project_platform,
    project_hosting,
    project_description,
    project_access_data,
    project_start_date,
    project_end_date,
    project_status,
  } = project
  await db.query(
    'INSERT INTO pms_projects (project_client_id,project_name,project_url,project_platform,project_hosting,project_description,project_access_data,project_start_date,project_end_date,project_status) VALUES (?,?,?,?,?,?,?,?,?,?)',
    [
      project_client_id,
      project_name,
      project_url,
      project_platform,
      project_hosting,
      project_description,
      project_access_data,
      project_start_date,
      project_end_date,
      project_status,
    ]
  )
}

const updateProject = async (project, project_id) => {
  const {
    project_client_id,
    project_name,
    project_url,
    project_platform,
    project_update,
    project_last_update,
    project_hosting,
    project_description,
    project_access_data,
    project_start_date,
    project_end_date,
    project_status,
    project_online,
  } = project
  await db.query(
    'UPDATE pms_projects SET project_client_id=? , project_name=?, project_url=?, project_platform=?, project_update=?, project_last_update=?, project_hosting=?, project_description=?, project_access_data=?,project_start_date=?, project_end_date=?, project_status=?, project_online=? WHERE project_id=?',
    [
      project_client_id,
      project_name,
      project_url,
      project_platform,
      project_update,
      project_last_update,
      project_hosting,
      project_description,
      project_access_data,
      project_start_date,
      project_end_date,
      project_status,
      project_online,
      project_id,
    ]
  )
}

const deleteProject = async (project_id) => {
  await db.query('DELETE FROM pms_projects WHERE project_id=?', [project_id])
}

module.exports = {
  getProjects,
  getProjectsRange,
  getSingleProject,
  getDuplicateProject,
  addProject,
  updateProject,
  deleteProject,
  getProjectsByClient,
}
