# configure our static assets
#stitch          = require 'stitch'
assets          = require './assets'

app.get '/js/site.js', assets.js()
app.get '/css/site.css', assets.css()

# map our template files

# api routes
require './api'

#site routes
require './site'

