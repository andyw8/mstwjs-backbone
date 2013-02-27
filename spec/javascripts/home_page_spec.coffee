describe "rendering the home page with Backbone", ->
  tripData = [
    {
      description: "A cruise"
      end_date:"1620-11-21"
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
      id: 14,
      image_name: "shakespeare.jpg"
      name: "See the Plays of Shakespeare"
      price: 1313.0
      start_date: "1604-11-01"
      tag_line: "See The Master As Intended"
    }
  ]

  describe "end to end", ->
    it "renders trips on the page", ->
      affix "#container"
      TimeTravel.init tripData

      # sanity check that collection is populated
      tripCount = TimeTravel.trips.size()
      expect(tripCount).toEqual 2

      TimeTravel.app.index()

      tripElementCount = $(".trip").size()
      expect(tripElementCount).toEqual 2
