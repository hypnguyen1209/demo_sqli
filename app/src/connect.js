const mysql = require('mysql')

const connection = mysql.createConnection({
    host: 'mysql',
    port: '3307',
    user: 'demo',
    password: 'root',
    database: 'demo_sqli'
})

connection.connect()

module.exports = connection