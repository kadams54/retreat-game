# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Team.create!(name: "Adam Lukens & Kerry Diehl")
Team.create!(name: "Andy Vida &	Stephen Vance")
Team.create!(name: "Brittany Ann Moore & Stephen Rivas, Jr.")
Team.create!(name: "Cliff Pruitt & Raelyn Bangel")
Team.create!(name: "Dan Thompson & Jeremy Fairbank")
Team.create!(name: "Daniel Flynn & Marshall Serlin")
Team.create!(name: "Dave Mosher & Tom Nightingale")
Team.create!(name: "Dayton Nolan & Jason Grosz")
Team.create!(name: "Eric Newbury & Sam Jones")
Team.create!(name: "Elmar Valmores & Lee Quarella")
Team.create!(name: "Ilana Corson & Kevin Baribeau")
Team.create!(name: "Jamie Phelps & Jason Karns")
Team.create!(name: "Jason Allen & Marla Brizel Zeschin")
Team.create!(name: "Joel Helbling & Kaleb Lape")
Team.create!(name: "Josh Starkey & Rob Vitaro")
Team.create!(name: "Kyle Adams & Sara Jackson")
Team.create!(name: "Marc Peabody & Steve Jackson")
Team.create!(name: "Micah Adams & Chris Caragianis")
Team.create!(name: "Nate Kandler & Neal Lindsay")
Team.create!(name: "Ross Brandes & Tommy Groshong")
Team.create!(name: "Extra Team 1")
Team.create!(name: "Extra Team 2")
Team.create!(name: "Extra Team 3")


Resource.create!(x_location: 0, y_location: 0, active: true, is_water: true, is_food: false)
Resource.create!(x_location: 20, y_location: 20, active: true, is_water: true, is_food: false)
Resource.create!(x_location: 50, y_location: 50, amount: 100, active: true, is_water: false, is_food: true)