require('coffee-script');

if( !process.env.NODE_ENV ) process.env.NODE_ENV="local"

var app = require('./config/app')( __dirname );
    
    app.listen( app.set('port') );
    
    // todo: figure out pathing
    //app.use( express.static('../public')

console.log('\x1b[36mSpace Age\x1b[90m v%s\x1b[0m running as \x1b[1m%s\x1b[0m on http://%s:%d'
    , app.set('version')
    , app.set('env')
    , app.set('host')
    , app.set('port')
);