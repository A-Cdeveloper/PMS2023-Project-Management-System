const express = require('express')
const bcrypt = require('bcrypt')
const dotenv = require('dotenv')
const crypto = require('crypto')

dotenv.config()
const jwt = require('jsonwebtoken')
const dbfunctions = require('../utils/users-query')
const sendMail = require('../utils/sendemail')

const verifyToken = require('../authMw')

const router = express.Router()
// /users

router.get('/', verifyToken, async (req, res) => {
  const users = await dbfunctions.getUsers()
  if (users.length == 0) {
    return res.status(400).json({ message: 'Users list is empty.' })
  }
  return res.status(231).send(users)
})

router.get('/user/:uid', verifyToken, async (req, res) => {
  const uid = req.params.uid
  const user = await dbfunctions.getSingleUser(null, null, uid)
  if (!user) {
    return res.status(400).json({ message: 'User not exist.' })
  }

  res.status(231).send({ ...user })
})

router.post('/login', async (req, res) => {
  const { username, password } = req.body
  const user = await dbfunctions.getSingleUser(username, null, null)

  //
  let timeObject = new Date()
  timeObject = new Date(timeObject.getTime() + 1000 * 60 * 60 * 4)

  if (user == undefined) {
    return res.status(400).json({ message: 'Username not exist.' })
  }
  if (user.verified == 0) {
    return res.status(400).json({ message: 'Account is not verified.' })
  }
  // if (user.refreshToken) {
  //   return res
  //     .status(400)
  //     .json({ message: 'You are already loged in in other device.' })
  // }
  if (user.refreshToken) {
    await dbfunctions.updateRefreshToken({
      refToken: null,
      user_id: user.uid,
    })
  }

  try {
    if (!(await bcrypt.compare(password, user.password))) {
      return res
        .status(400)
        .json({ message: `Password is wrong for user: ${username}.` })
    }
    //
    const existingUser = { username: username }
    const accessToken = jwt.sign(
      existingUser,
      process.env.ACCESS_TOKEN_SECRET,
      { expiresIn: '4h' }
    )
    const refreshToken = jwt.sign(
      existingUser,
      process.env.REFRESH_TOKEN_SECRET
    )

    await dbfunctions.updateRefreshToken({
      refToken: refreshToken,
      user_id: user.uid,
    })

    res.status(200).json({
      message: `Welcome ${user.first_name} ${user.last_name}.`,
      user: {
        uid: user.uid,
        first_name: user.first_name,
        last_name: user.last_name,
        email: user.email,
        role: user.role,
        accessToken: accessToken,
        refreshToken: refreshToken,
        expiresIn: timeObject,
      },
    })
    //
  } catch (error) {
    res.status(500).send()
  }
})
/////
router.post('/logout', async (req, res) => {
  const refreshToken = req.body.refreshToken

  if (refreshToken === undefined) {
    return res.status(400).json({ message: 'Refresh token not found.' })
  }

  const existingUser = await dbfunctions.getRefreshToken(refreshToken)
  if (existingUser === undefined) {
    return res.status(400).json({ message: 'Bad refresh token.' })
  }

  await dbfunctions.clearRefreshToken(refreshToken)
  return res.status(231).json({ message: 'You are succesfully loged out!' })
})

// // refresh token
router.post('/refresh_token', verifyToken, async (req, res) => {
  const refreshToken = req.body.refreshToken

  if (refreshToken === undefined)
    return res.status(400).json({ message: 'Bad refresh token.' })

  const existingUser = await dbfunctions.getRefreshToken(refreshToken)
  if (existingUser === undefined) {
    return res.status(400).json({ message: 'Refresh token not found.' })
  }

  jwt.verify(
    refreshToken,
    process.env.REFRESH_TOKEN_SECRET,
    async (err, user) => {
      if (err) return res.sendStatus(403)

      let timeObject = new Date()
      timeObject = new Date(timeObject.getTime() + 1000 * 60 * 60 * 4)

      const accessToken = jwt.sign(
        { username: existingUser.username },
        process.env.ACCESS_TOKEN_SECRET,
        { expiresIn: '4h' }
      )
      const newRefreshToken = jwt.sign(
        { username: existingUser.username },
        process.env.REFRESH_TOKEN_SECRET
      )

      await dbfunctions.updateRefreshToken({
        refToken: newRefreshToken,
        user_id: existingUser.uid,
      })

      res.status(200).json({
        message: `Your session has been extended`,
        user: {
          uid: existingUser.uid,
          first_name: existingUser.first_name,
          last_name: existingUser.last_name,
          email: existingUser.email,
          role: existingUser.role,
          accessToken: accessToken,
          refreshToken: newRefreshToken,
          expiresIn: timeObject,
        },
      })
    }
  )
})

router.post('/new', verifyToken, async (req, res) => {
  const { first_name, last_name, username, email, role } = req.body

  const user = await dbfunctions.getSingleUser(username, null, null)
  if (user) {
    return res.status(400).json({ message: 'Username already exist.' })
  }
  const userEmail = await dbfunctions.getSingleUser(null, email, null)
  if (userEmail) {
    return res
      .status(400)
      .json({ message: 'User with this email already exist.' })
  }

  const randomPassword = crypto.randomBytes(16).toString('hex')
  const hashedPassword = await bcrypt.hash(randomPassword, 10)

  // const verifedToken = jwt.sign(
  //   { username: username },
  //   process.env.ACCESS_TOKEN_SECRET,
  //   { expiresIn: '24h' }
  // )

  const verifedToken = crypto.randomBytes(16).toString('hex')

  const newUser = {
    first_name: first_name,
    last_name: last_name,
    username,
    password: hashedPassword,
    email,
    created_date: new Date(),
    role,
    verifedToken,
  }
  await dbfunctions.createUser(newUser)

  const lastUser = await dbfunctions.getSingleUser(username, null, null)

  const message = `Welcome to PMS ${first_name} ${last_name}.
  
Please verify your account clicking on link below:
${process.env.FRONTEND_URL}/user-verify/${lastUser.uid}/${lastUser.verifedToken}
  
Your login data:
Username: ${username}
Temporary password: ${randomPassword}`

  await sendMail(email, 'User conformation', message)
  res.status(231).json({ message: `Conformation email was sent to user.` })
})

//////////////////////////////////////////////////////////////
router.patch('/forgot-password', async (req, res) => {
  const { entry } = req.body

  const user = await dbfunctions.getSingleUser(entry, entry, null)
  if (!user) {
    return res
      .status(400)
      .json({ message: `User with username/email ${entry} not exist.` })
  }

  const randomPassword = crypto.randomBytes(16).toString('hex')
  const hashedPassword = await bcrypt.hash(randomPassword, 10)

  await dbfunctions.editUserPassword(user.uid, hashedPassword)

  const message = `Dear ${user.first_name} ${user.last_name}.

Your requested to change password for username ${user.username}.
Your new temporary password is: ${randomPassword}`

  await sendMail(user.email, 'Change password request', message)
  res.status(231).json({
    username: user.username,
    message: `Password changed. Email with new password was sent to user.`,
  })
})

//////////////////////////////////////////////////////////////////////////
router.delete('/:user_id/delete', verifyToken, async (req, res) => {
  const uid = req.params.user_id

  const user = await dbfunctions.getSingleUser(null, null, uid)

  if (!user) {
    return res.status(400).json({ message: 'User not exist.' })
  }
  await dbfunctions.deleteUser(uid)

  const message = `Hello ${user.first_name} ${user.last_name}.

Your account ${user.username} has been deleted.`

  await sendMail(user.email, 'Account deleted', message)
  res.status(231).json({ user, message: 'User succesfully deleted.' })
})

// ////////////////////////////////////////////////////////////////
router.get('/user-verify/:user_id/:verToken', async (req, res) => {
  const { user_id, verToken } = req.params
  const user = await dbfunctions.getSingleUser(null, null, user_id)

  if (!user) {
    return res
      .status(400)
      .json({ message: 'User not exist.Please contact app admin.' })
  }
  if (user.verifedToken !== verToken) {
    return res.status(400).json({
      message: 'Conformation link not valid. Please contact app admin.',
    })
  }
  await dbfunctions.conformUser(user_id)
  res.status(231).json({ user, message: `Your registration is now conformed.` })
})

// ////////////////////////////////////////////////////////////////
router.patch('/change-password/:user_id', verifyToken, async (req, res) => {
  const { user_id } = req.params
  const { newPassword } = req.body
  const user = await dbfunctions.getSingleUser(null, null, user_id)

  if (!user) {
    return res.status(400).json({ message: 'User not exist.' })
  }

  const hashedPassword = await bcrypt.hash(newPassword, 10)

  await dbfunctions.editUserPassword(user.uid, hashedPassword)

  res.status(231).json({ message: `User password changed.` })
})

// ////////////////////////////////////////////////////////////////
router.patch('/change-role/:user_id', verifyToken, async (req, res) => {
  const { user_id } = req.params
  const { newRole } = req.body
  const user = await dbfunctions.getSingleUser(null, null, user_id)

  if (!user) {
    return res.status(400).json({ message: 'User not exist.' })
  }

  await dbfunctions.editUserRole(user.uid, newRole)

  res.status(231).json({ message: `User role  changed.` })
})

// ////////////////////////////////////////////////////////////////
router.patch('/change-avatar/:user_id', verifyToken, async (req, res) => {
  const { user_id } = req.params
  const { newAvatarPath } = req.body
  const user = await dbfunctions.getSingleUser(null, null, user_id)

  if (!user) {
    return res.status(400).json({ message: 'User not exist.' })
  }

  await dbfunctions.editUserProfileImage(user.uid, newAvatarPath)

  res.status(231).json({ message: `User profile image changed.` })
})

// ////////////////////////////////////////////////////////////////
router.patch('/remove-avatar/:user_id', verifyToken, async (req, res) => {
  const { user_id } = req.params
  const user = await dbfunctions.getSingleUser(null, null, user_id)

  if (!user) {
    return res.status(400).json({ message: 'User not exist.' })
  }

  await dbfunctions.removeUserProfileImage(user.uid)

  res.status(231).json({ message: `User profile image removed.` })
})

module.exports = router
