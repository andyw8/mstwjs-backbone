class TimeTravel.Routers.TripRouter extends Backbone.Router
  routes:
    "": "index"

  initialize: ->
    @topNavigationView = new TimeTravel.Views.TopNavigationView()
    @sidebarView = new TimeTravel.Views.SidebarView()

  index: ->
    $container = $("#container")
    $container.append @topNavigationView.render().el
    $container.append @sidebarView.render().el

    $content = $("<div/>").attr("id", "content")
    $container.append $content
    tripsView = new TimeTravel.Views.TripsView(
      collection: TimeTravel.trips
    )
    $content.append tripsView.render().el
