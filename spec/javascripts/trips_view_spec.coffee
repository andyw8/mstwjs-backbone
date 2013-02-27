describe "rendering all the trips with Backbone", ->
  tripData = [
    {
      description: "A cruise"
      end_date: "1620-11-21"
      id: 13
      image_name: "mayflower.jpg"
      name: "Mayflower Luxury Cruise"
      price: 1204.0
      start_date: "1620-05-17"
      tag_line: "Enjoy The Cruise That Started It All"
    },
    {
      description: "See plays"
      end_date: "1605-10-31"
      id: 14
      image_name: "shakespeare.jpg"
      name: "See the Plays of Shakespeare"
      price: 1313.0,
      start_date: "1604-11-01"
      tag_line: "See The Master As Intended"
    }
  ]

  describe "renders individual views", ->
    beforeEach ->
      @trips = new TimeTravel.Collections.Trips(tripData);
      @tripsView = new TimeTravel.Views.TripsView(
        collection: @trips
      )

    it "renders a single trip", ->
      firstTrip = @trips.at(0)
      tripView = @tripsView.renderTrip firstTrip
      expect(tripView.$el).toHaveClass "trip"

    it "renders all the trips in context", ->
      # why use spy here but not above?
      spyOn(@tripsView, 'renderTrip').andCallThrough()
      @tripsView.render()
      callCount = @tripsView.renderTrip.calls.length
      expect(callCount).toEqual 2
