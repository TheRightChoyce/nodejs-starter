assets      = require './assets'

module.exports = (app) ->
    
    # dummy index
    app.get '/', (req, res) ->
        res.render 'index', { 'title' : 'Nodejs Starter Kit' }

    # Configure out asset pipeline
    #js_package = assets(app)
    #app.get '/js/site.js', js_package.createServer( )

    return app


