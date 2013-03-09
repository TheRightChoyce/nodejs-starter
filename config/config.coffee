express     = require 'express'
path        = require 'path'

module.exports = (app, webRoot) ->

    app.configure ->
        
        app.set 'port', process.env.PORT || 3000
        app.set 'webRoot', path.join( webRoot, 'web' )
        app.set 'views', path.join( app.get('webRoot'), 'views')
        app.set 'view engine', 'jade'
        
        app.use express.favicon()
        app.use express.logger('dev')
        app.use express.bodyParser()
        app.use express.methodOverride()
        app.use express.cookieParser('your secret here')
        app.use express.session()
        app.use express.static( path.join( app.get('webRoot'), 'public' ) )
        app.use express.errorHandler()

        app.use app.router        

        app.set 'version', '0.1.0'

    return app
