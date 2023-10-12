const express = require('express')

const router = express.Router()

router.post('/', (req, res) => {
  // Log the files to the console
  if (!req.files) return res.status(400).json({ message: 'File not selected' })

  const { image } = req.files

  // If no image submitted, exit
  if (!/^image/.test(image.mimetype))
    return res.status(400).json({ message: 'File extension not alowed' })
  // // Move the uploaded image to our upload folder
  image.mv(process.cwd() + '/public/' + image.name)
  console.log(process.env.BASE_URL + '/public/' + image.name)
  //   // // All good
  res.status(200).json({ message: 'Upload image success' })
})

module.exports = router
