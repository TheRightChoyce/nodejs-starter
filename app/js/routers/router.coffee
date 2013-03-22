Backbone    = require 'Backbone'

module.exports.AppRouter = Backbone.Router.extend(
    routes:
        '':     'index'

    index: () ->
        collection = new ModelCollection
        collection.fetch(
            success: () ->
                console.log 'success'
        )

    initialize = () ->
        appRouter = new AppRouter
        Backbone.History.start()
)