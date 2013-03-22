
# dummy item model collection   
app.get '/api/item', (req, res) ->
    res.writeHead 200, { 'Content-Type': 'application/json' }
    items = new Array
    items.push
        id: 1
        name: 'test'
        misc: 'misc data'
    
    items.push
        id: 2
        name: 'test 2'
        misc: 'misc data 2'
    
    res.write JSON.stringify( items )
    res.end

# dummy detail
app.get '/api/item/:id?', (req, res) ->
    res.writeHead 200, { 'Content-Type': 'application/json' }
    item =
        id: 1
        name: 'test'
        misc: 'misc data'
    res.write JSON.stringify( item )
    res.end