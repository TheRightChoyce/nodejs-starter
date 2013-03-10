#
# Use stitch for an easy asset pipeline
#
stitch       = require 'stitch'

#
# Uses stitch to create a pre-compiled asset pipeline
module.exports = (app) ->

    return stitch.createPackage
        
        paths: [
           app.get('webRoot') + '/js/models'
           app.get('webRoot') + '/js/views'
           app.get('webRoot') + '/js/controllers'
           app.get('webRoot') + '/js/routers'
        ]
        
        dependencies: [
            #app.get('webRoot') + '\\public\\components\\bootstrap\\js'
        ]
