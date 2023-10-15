const db = require('./connection')

const getUsers = async () => {
  const [users] = await db.query('SELECT * FROM pms_users')
  return users
}

const getSingleUser = async (username, email, user_id) => {
  const [user] = await db.query(
    'SELECT * FROM pms_users WHERE username=? OR email=? OR uid=?',
    [username, email, user_id]
  )
  return user[0]
}

const createUser = async (user) => {
  const {
    first_name,
    last_name,
    username,
    password,
    email,
    created_date,
    role,
    verifedToken,
  } = user
  await db.query(
    'INSERT INTO pms_users (first_name, last_name, username, password, email,created_date,role,verified,verifedToken) VALUES (?,?,?,?,?,?,?,?,?)',
    [
      first_name,
      last_name,
      username,
      password,
      email,
      created_date,
      role,
      0,
      verifedToken,
    ]
  )
}

const editUserPassword = async (user_id, newPassword) => {
  await db.query('UPDATE pms_users SET password = ? WHERE uid=?', [
    newPassword,
    user_id,
  ])
}

const editUserProfileImage = async (user_id, newAvatar) => {
  await db.query('UPDATE pms_users SET user_avatar = ? WHERE uid=?', [
    newAvatar,
    user_id,
  ])
}

const removeUserProfileImage = async (user_id) => {
  await db.query('UPDATE pms_users SET user_avatar = NULL WHERE uid=?', [
    user_id,
  ])
}

const conformUser = async (user_id) => {
  await db.query(
    "UPDATE pms_users SET verified = 1, verifedToken='' WHERE uid=?",
    [user_id]
  )
}

// tokens
const getRefreshToken = async (refToken) => {
  const [refreshTkn] = await db.query(
    'SELECT * FROM pms_users WHERE refreshToken=?',
    [refToken]
  )
  return refreshTkn[0]
}

const updateRefreshToken = async (refToken, user_id) => {
  await db.query('UPDATE pms_users SET refreshToken = ? WHERE uid=?', [
    refToken,
    user_id,
  ])
}

const clearRefreshToken = async (refToken) => {
  await db.query(
    'UPDATE pms_users SET refreshToken = NULL WHERE refreshToken=?',
    [refToken]
  )
}

module.exports = {
  getUsers,
  getSingleUser,
  createUser,
  editUserPassword,
  editUserProfileImage,
  conformUser,
  getRefreshToken,
  updateRefreshToken,
  clearRefreshToken,
}
