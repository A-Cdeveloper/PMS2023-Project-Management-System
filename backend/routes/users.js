const express = require('express')
const bcrypt = require('bcrypt')
const dotenv = require('dotenv')
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
  timeObject = new Date(timeObject.getTime() + 1000 * 60 * 60)

  if (user == undefined) {
    return res.status(400).json({ message: 'Username not exist.' })
  }
  if (user.verified == 0) {
    return res.status(400).json({ message: 'Account is not verified.' })
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
      { expiresIn: '1h' }
    )
    const refreshToken = jwt.sign(
      existingUser,
      process.env.REFRESH_TOKEN_SECRET
    )
    await dbfunctions.updateRefreshToken(refreshToken, user.uid)

    res.status(200).json({
      message: `Welcome ${user.first_name} ${user.last_name}.`,
      user: {
        first_name: user.first_name,
        last_name: user.last_name,
        email: user.email,
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
  return res.status(231).json({ message: 'You are logout.' })
})

// // refresh token
// router.post('/refresh_token', async (req, res) => {
//   const refreshToken = req.body.refreshToken

//   if (refreshToken === undefined)
//     return res.status(400).json({ message: 'Bad refresh token.' })

//   const existingUser = await dbfunctions.getRefreshToken(refreshToken)
//   if (existingUser === undefined) {
//     return res.status(400).json({ message: 'Refresh token not found.' })
//   }

//   jwt.verify(
//     refreshToken,
//     process.env.REFRESH_TOKEN_SECRET,
//     async (err, user) => {
//       if (err) return res.sendStatus(403)

//       let timeObject = new Date()
//       timeObject = new Date(timeObject.getTime() + 1000 * 60 * 60)

//       const accessToken = jwt.sign(
//         { username: existingUser.username },
//         process.env.ACCESS_TOKEN_SECRET,
//         { expiresIn: '1h' }
//       )
//       const newRefreshToken = jwt.sign(
//         { username: existingUser.username },
//         process.env.REFRESH_TOKEN_SECRET
//       )
//       await dbfunctions.updateRefreshToken(newRefreshToken, existingUser.uid)
//       res.json({
//         accessToken: accessToken,
//         refreshToken: newRefreshToken,
//         expiresIn: timeObject,
//       })
//     }
//   )
// })

// router.post('/register', async (req, res) => {
//   const { firstname, lastname, username, password, email } = req.body
//   const user = await dbfunctions.getSingleUser(username)

//   if (user) {
//     return res.status(400).json({ message: 'Username already exist.' })
//   }

//   const userEmail = await dbfunctions.getSingleUser(null, email)

//   if (userEmail) {
//     return res
//       .status(400)
//       .json({ message: 'User with this email already exist.' })
//   }

//   const hashedPassword = await bcrypt.hash(password, 10)
//   const verifedToken = jwt.sign(
//     { username: username },
//     process.env.ACCESS_TOKEN_SECRET,
//     { expiresIn: '1h' }
//   )
//   const newUser = {
//     first_name: firstname,
//     last_name: lastname,
//     username,
//     password: hashedPassword,
//     email,
//     verifedToken,
//   }
//   await dbfunctions.createUser(newUser)
//   const lastUser = await dbfunctions.getSingleUser(username)

//   const message = `Welcome to PMS ${firstname} ${lastname}.
//   Please verify your account clicking on link below

//   ${process.env.BASE_URL}/users/user-verify/${lastUser.uid}/${lastUser.verifedToken}`

//   await sendMail(email, 'User conformation', message)
//   res.status(231).json({ message: `User registed.` })
// })

// //
// router.get('/user-verify/:user_id/:verToken', async (req, res) => {
//   const { user_id, verToken } = req.params
//   const user = await dbfunctions.getSingleUser(null, null, user_id)

//   if (!user) {
//     return res.status(400).json({ message: 'User not exist.' })
//   }
//   if (user.verifedToken !== verToken) {
//     return res.status(400).json({ message: 'Conformation link not valid.' })
//   }
//   await dbfunctions.conformUser(user_id)
//   res.status(231).json({ message: `User conformed.` })
// })

module.exports = router
