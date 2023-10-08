const dotenv = require('dotenv')
dotenv.config()
const jwt = require('jsonwebtoken')

const verifyToken = (req, res, next) => {
  const token = req.headers.authorization?.split(' ')[1]

  if (!token) {
    return res.status(401).json({ message: 'Authentication required.' })
  }

  // return res.status(231).send(token)
  jwt.verify(token, process.env.ACCESS_TOKEN_SECRET, (err, decoded) => {
    if (err) {
      return res.status(403).json({ message: 'Invalid token.' })
    }
    // req.user = decoded
    next()
  })
}

module.exports = verifyToken
