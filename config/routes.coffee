assets      = require './assets'

module.exports = (app) ->
    
    # Configure our asset pipeline
    js_package = assets(app)
    app.get '/js/site.js', js_package.createServer( )

    # dummy index
    app.get '/', (req, res) ->
        res.render 'index', { 'title' : 'Nodejs Starter Kit' }

    # dummy item model collection
    app.get '/api/item', (req, res) ->
        res.writeHead 200, { 'Content-Type': 'application/json' }
        items = new Array
        items.push(
            id: 1
            name: 'test'
            misc: 'misc data'
        )
        res.write JSON.stringify( items )
        res.end

    return app


