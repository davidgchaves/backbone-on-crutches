@BackboneOnCrutches = do (Backbone, Marionette) ->

  App = new Marionette.Application

  App.addRegions
    headerRegion: "header"
    mainRegion: "main"
    footerRegion: "footer"

  App.on "initialize:after", ->
    if Backbone.history
      Backbone.history.start()

  App
