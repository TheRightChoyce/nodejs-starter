# Everything we need to start the app
require('coffee-script')
express     = require 'express'
path        = require 'path'


#some super globals for everywhere use
#global._    = require 'underscore'
global.app      = express()
global.appRoot  = __dirname

# configure our app
require './config'

# basic app configuration
app.configure ->
    # some basic app setup
    app.set 'port', process.env.PORT or 3000
    app.set 'version', require('./package').version
    app.set 'description', require('./package').description
    
    # set up some global pathing
    app.set 'webRoot', path.join __dirname, 'app'
    
    # configure views
    app.set 'views', path.join __dirname, 'views'
    app.set 'view engine', 'jade'
    
    # configure the useage of express
    app.use express.favicon("#{__dirname}/app/favicon.ico", maxAge: 2592000000)
    app.use express.bodyParser(uploadDir: '/tmp', keepExtensions: true)
    app.use express.cookieParser('cookie monster')
    app.use express.session(cookie: { maxAge: 604800000 } ) #, store: app.sessionStore)
    app.use express.methodOverride()
    app.use app.router
    
    #app.use express.static app.get('webRoot')
    app.use express.errorHandler()

# Specific environment configurations
app.configure 'development', ->
    app.use express.logger('dev')
    app.use express.static("#{__dirname}/public")
    app.use express.errorHandler(dumpExceptions: true, showStack: true)
    #app.use require('connect-assets')()
    app.use express.compress()

app.configure 'test', 'staging', 'production', ->
    app.use express.static("#{__dirname}/public", maxAge: 86400000)
    app.use express.errorHandler()
    #app.use require('connect-assets')(build: true)
    app.use express.compress()
    #app.use bugsnag.register("bugsnag key")    

# setup our routes
#require './locales'
require './routes'

# Start up the server and socket.io
server = require('http').createServer(app)
server.listen app.get("port"), ->
    months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
    now = new Date()
    console.log("%d %s %s - %s v%s (%s) port %d", now.getDate(), months[now.getMonth()], now.toLocaleTimeString(), app.get('description'), app.get('version'), app.get('env'), app.get('port'))
    #require('./socket')(server)