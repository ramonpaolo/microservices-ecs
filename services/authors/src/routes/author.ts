import express from "express"

const app = express()

app.get("/", (_, res) => {
    res.status(200).json({
        status: 'success',
        message: "Project is working : )"
    })
})

export default app;