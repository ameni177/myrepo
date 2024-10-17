const express = require("express")
const cors = require('cors');

const app = express()
const PORT = 5005
app.use(express.json())
app.use(cors())

app.get("/", (req,res) => {
    res.send("<h2>Hello World<h2>")
})

app.post("/name",(req,res) => {
   console.log(req.body.name)
 res.json(req.body.name)

})
app.listen(PORT)