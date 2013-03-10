#
# Use stitch for an easy asset pipeline
#
stitch       = require 'stitch'

#
# Uses stitch to create a pre-compiled asset pipeline
module.exports = (app) ->

    return stitch.createPackage
        
        paths: [
           app.get('webRoot') + '/models'
           app.get('webRoot') + '/views'
        ]
        
        dependencies: [
            #app.get('webRoot') + '\\public\\components\\bootstrap\\js'
        ]
