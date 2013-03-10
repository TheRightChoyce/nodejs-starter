Backbone    = require 'backbone'

module.exports.model = Backbone.Model.extend(
    urlRoot: 'someurl'
    
    initialize: () ->
        console.log('init model')
)