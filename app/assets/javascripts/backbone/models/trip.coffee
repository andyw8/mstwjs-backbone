class TimeTravel.Models.Trip extends Backbone.Model

TimeTravel.Collections.Trips = Backbone.Collection.extend(
  model: TimeTravel.Models.Trip
  url: "/trips"
)
