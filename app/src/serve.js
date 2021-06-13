const express = require('express')
const session = require('express-session')
const app = express()
const bodyParser = require('body-parser')
const { readFileSync } = require('fs')
app.use(session({
    resave: true,
    saveUninitialized: true,
    secret: 'KCSC',
    cookie: { maxAge: 60000 }
}))
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: false }))

const connect = require('./connect')

const queryDB = queryText => {
    return new Promise((resolve, reject) => {
        connect.query(queryText, (err, result, _) => {
            if (err) reject(err)
            resolve(result)
        })
    })

}
app.post('/login', async (req, res) => {
    try {
        let { username, password } = req.body
        let result = await queryDB(`SELECT username, password FROM users WHERE username='${username}' AND password='${password}'`)
        if (result.length > 0) {
            req.session.user = result[0].username
            res.json({
                status: true,
                message: 'Login thành công!'
            })
        } else {
            res.status(403).json({
                status: false,
                message: 'Sai Username hoặc Password!'
            })
        }
    } catch (err) {
        console.log(err)
        res.status(500)
    }
})
app.get('/get', async (req, res) => {
    try {
        console.log(req.session)
        let { user } = req.session
        if (user) {
            let result = await queryDB(`SELECT data FROM notepad WHERE username='${user}'`)
            if (result.length > 0) {
                res.json({
                    status: true,
                    message: result[0].data
                })
            }
        } else {
            res.status(403).json({
                status: false,
                message: result[0].data
            })
        }

    } catch (error) {
        console.log(error)
        res.status(500)
    }
})
app.get('/', (req, res) => {
    res.send(readFileSync(__dirname + '/../public/index.html', { encoding: 'utf8' }))
})
app.listen(8080, _ => {
    console.log('Running...')
})