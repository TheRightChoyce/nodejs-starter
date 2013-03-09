#
# Use stitch for an easy asset pipeline
#
stitch       = require 'stitch'


module.exports = (app) ->

    return stitch.createPackage
        
        paths: [
           '/shared/js/models'
        ]
        
        dependencies: [
            #app.get('webRoot') + '\\public\\components\\bootstrap\\js'
        ]
