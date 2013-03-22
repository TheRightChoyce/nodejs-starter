
app.get '/', (req, res) ->
    res.render 'index', { 'title' : 'Nodejs Starter Kit' }
