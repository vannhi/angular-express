
###
Module dependencies.
###
express = require("express")
morgan = require("morgan")
bodyParser = require("body-parser")
methodOverride = require("method-override")
serveStatic = require("serve-static")
errorhandler = require("errorhandler")
user = require("./routes/user")
http = require("http")
path = require("path")
app = express()

# all environments
app.set "port", process.env.PORT or 3000
app.set "views", __dirname + "/views"
app.set "view engine", "jade"
app.use morgan("dev")
app.use bodyParser.urlencoded(extended: true)
app.use bodyParser.json()
app.use methodOverride()
app.use serveStatic(path.join(__dirname, "../public"))

# development only
app.use errorhandler()  if "development" is app.get("env")

app.get "/users", user.list
module.exports = exports = app
