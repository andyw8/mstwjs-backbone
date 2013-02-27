trips = [
    {
      description: "A cruise",
      end_date:"1620-11-21",
      image_name: "mayflower.jpg",
      name: "Mayflower Luxury Cruise",
      price: 1204.0,
      start_date: "1620-05-17",
      tag_line: "Enjoy The Cruise That Started It All"
    },
    {
      description: "See plays",
      end_date: "1605-10-31",
      image_name: "shakespeare.jpg",
      name: "See the Plays of Shakespeare",
      price: 1313.0,
      start_date: "1604-11-01",
      tag_line: "See The Master As Intended"
    }
  ]

trips.each do |t|
  Trip.create! t
end
