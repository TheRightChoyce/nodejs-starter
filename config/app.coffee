# require some libraries
express     = require 'express'

config      = require './config'
routes      = require './routes'

#
# creates a new app and specifiy the app root
module.exports = (appRoot) ->
    
    app = express()

    # general config
    config( app, appRoot )

    # set our routes
    routes( app )
    
    return app