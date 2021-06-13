const mysql = require('mysql')

const connection = mysql.createConnection({
    host: 'demo',
    port: '3307',
    user: 'root',
    password: 'root',
    database: 'demo_sqli'
})

connection.connect()

module.exports = connection