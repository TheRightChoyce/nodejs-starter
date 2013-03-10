class AppRouter extends Backbone.Router
    routes:
        '/'     : 'index'

    defaultAction: (actions) ->
        indexView.render()

    initialize = () ->
        appRouter = new AppRouter
        Backbone.History.start()