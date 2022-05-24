import express from 'express'
import compression from 'compression'

import author from "./routes/author"

const app = express()

app.use(compression())

const PORT = process.env.PORT || 3000

app.use("/authors", author)

app.listen(PORT)