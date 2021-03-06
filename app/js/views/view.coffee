#
# Dummy backbone view
Backbone    = require 'backbone'

module.exports.view = Backbone.View.extend(
    tagName: 'li'
    
    className: 'document-row'
    
    events: 
        "click .icon":  "open"

    initialize: () ->
        console.log( 'initialize' )

    render: () ->
        console.log( 'render' )    
)