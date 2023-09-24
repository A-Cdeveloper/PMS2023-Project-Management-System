const db = require('./connection')

const getProjects = async (orderBy, orderDirection) => {
  const query =
    'SELECT pms_projects.*, pms_clients.client_name FROM pms_projects, pms_clients WHERE client_id = project_client_id ORDER BY ' +
    orderBy +
    ' ' +
    orderDirection

  const [projects] = await db.query(query)
  return projects
}

const getProjectsRange = async (from, perPage, orderBy, orderDirection) => {
  const query =
    'SELECT pms_projects.*, pms_clients.client_name FROM pms_projects, pms_clients WHERE client_id = project_client_id ORDER BY ' +
    orderBy +
    ' ' +
    orderDirection +
    ' LIMIT ?,?'

  const [projects] = await db.query(query, [from, perPage])
  return projects
}

// getProjectsRange(0, 5, 'ASC').then((res) => console.log(res))

const getSingleProject = async (project_id) => {
  const [project] = await db.query(
    'SELECT * FROM pms_projects WHERE project_id=?',
    [project_id]
  )
  return project[0]
}

const addProject = async (project) => {
  const {
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
  await db.query(
    'INSERT INTO pms_projects (project_client_id,project_name,project_url,project_platform,project_update,project_last_update,project_hosting,project_description,project_ftpdata,project_dbdata,project_start_date,project_end_date,project_status,project_online) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)',
    [
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
    project_ftpdata,
    project_dbdata,
    project_start_date,
    project_end_date,
    project_status,
    project_online,
  } = project
  await db.query(
    'UPDATE pms_projects SET project_client_id=? , project_name=?, project_url=?, project_platform=?, project_update=?, project_last_update=?, project_hosting=?, project_description=?, project_ftpdata=?, project_dbdata=?, project_start_date=?, project_end_date=?, project_status=?, project_online=? WHERE project_id=?',
    [
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
  addProject,
  updateProject,
  deleteProject,
}
