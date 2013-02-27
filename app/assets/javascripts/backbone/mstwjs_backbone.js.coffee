#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.TimeTravel =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}

  init: (tripData) ->
    @trips = new TimeTravel.Collections.Trips tripData
    @app = new TimeTravel.Routers.TripRouter
    Backbone.history.start(
      pushState: true
    )
    @

  template: (filename) ->
    HoganTemplates["backbone/templates/" + filename]
