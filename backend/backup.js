mysqldump = require('mysqldump')
// const dumpFileName = `${Math.round(Date.now() / 1000)}.dump.sql`
// dump the result straight to a file
mysqldump({
  connection: {
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'logindb',
  },
  dumpToFile: `./public/backup/pms_dump.sql`,
})
