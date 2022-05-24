import express from 'express'
import compression from 'compression'

const app = express()

app.use(compression())

const PORT = process.env.PORT || 3000

app.get("/", (_, res) => {
    res.status(200).json({
        status: 'success',
        message: "Project is working : )",
        endpoint: "books"
    })
})

app.listen(PORT)