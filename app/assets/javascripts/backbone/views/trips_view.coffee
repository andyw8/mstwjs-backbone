class TimeTravel.Views.TripsView extends Backbone.View
  tagName:'section'
  className: 'all-trips span-20'

  initialize: ->
    _.bindAll this, 'render'
    @collection.bind 'reset', @render, @

  render: ->
    renderedTemplate = TimeTravel.template("trips").render()
    @$el.html renderedTemplate
    $trips = @$(".trips")
    # TODO change to coffeescript style (for loop)
    @collection.each ((trip, index) ->
      $trips.append @renderTrip(trip).el
    ), @
    @

  renderTrip: (trip) ->
    view = new TimeTravel.Views.TripView(
      model: trip
      collection: @collection
    )
    view.render()
