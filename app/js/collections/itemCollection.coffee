Backbone    = require 'Backbone'

module.exports.ItemCollection = Backbone.Collection.extend(
    mode: Item
    url: '/api/item'
)