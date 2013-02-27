class TimeTravel.Views.TripView extends Backbone.View
  className: 'trip trip_entry span-6'

  initialize:->
    _.bindAll this, 'render'

  render: ->
    renderedTemplate = TimeTravel.template('trip').render @model.attributes
    @$el.html renderedTemplate
    @
