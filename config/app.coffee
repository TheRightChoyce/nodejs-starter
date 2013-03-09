# require some libraries
express     = require 'express'

config      = require './config'
routes      = require './routes'

module.exports = (webRoot) ->
    
    app = express()

    # general config
    config( app, webRoot )

    # set our routes
    routes( app )
    
    return app