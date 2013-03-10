express     = require 'express'
path        = require 'path'

module.exports = (app, appRoot) ->

    app.configure ->
        
        # some basic app setup
        app.set 'port', process.env.PORT || 3000
        app.set 'version', '0.1.0'
        
        # set up some global pathing
        app.set 'appRoot', appRoot
        app.set 'webRoot', path.join( path.join( appRoot, 'app' ), 'public' )
        
        # configure views
        app.set 'views', path.join app.get('webRoot'), 'templates'
        app.set 'view engine', 'jade'
        
        # configure the useage of express
        app.use express.favicon()
        app.use express.logger('dev')
        app.use express.bodyParser()
        app.use express.methodOverride()
        app.use express.cookieParser('your secret here')
        app.use express.session()
        app.use express.static app.get('webRoot')
        app.use express.errorHandler()

        # use the app router (not actually sure what this does)
        app.use app.router
    
    return app
