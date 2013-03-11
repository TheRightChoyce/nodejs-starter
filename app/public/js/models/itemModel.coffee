Backbone    = require 'backbone'

module.exports.ItemModel = Backbone.Model.extend(
    Collection: ModelCollection
    
    #url: () ->
    #    return '/api/item/' + 
    
    initialize: () ->
        console.log('init model')
)