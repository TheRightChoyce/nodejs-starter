stitch      = require 'stitch'


# Configure our javascript
exports.js = () ->
  js = stitch.createPackage
    paths: [
      appRoot + '/app/js/models'
      appRoot + '/app/js/views'
      appRoot + '/app/js/controllers'
      appRoot + '/app/js/routers'
    ]

    dependencies: [
      #app.get('webRoot') + '\\public\\components\\bootstrap\\js'
    ]
  js.createServer()


# Export a path to our css pipeline
exports.css = () ->
  css = stitch.createPackage
    paths: [
      appRoot + '/app/css'
    ]
    dependencies: []

  css.createServer()
