BrunchServer = require './lib/server'
{config} = require './config'

module.exports.startServer = (port, path, callback) ->
    bsvr = new BrunchServer(config)
    bsvr.start(port, callback)
    bsvr