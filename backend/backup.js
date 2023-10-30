const fs = require('fs')
const { spawn } = require('child_process')
const dumpFileName = `${Math.round(Date.now() / 1000)}.dump.sql`

const writeStream = fs.createWriteStream(dumpFileName)

const dump = spawn('mysqldump', ['-u', 'root', '', 'logindb'])

dump.stdout
  .pipe(writeStream)
  .on('finish', function () {
    console.log('Completed')
  })
  .on('error', function (err) {
    console.log(err)
  })
