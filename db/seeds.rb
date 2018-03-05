# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all

puts "Creating some movies for DB"
puts

m = Movie.new(title: "The Big Lebowski", year: "1998", director: "Ethan Coen, Joel Coen")
m.save
puts m.title
m = Movie.new(title: "The Room", year: "2003", director: "Tommy Wiseau")
m.save
puts m.title
m = Movie.new(title: "2001: A Space Odyssey", year: "1968", director: "Stanley Kubrick")
m.save
puts m.title
m = Movie.new(title: "Truman Show")
m.save
puts m.title
m = Movie.new(title: "Being John Malkovich")
m.save
puts m.title
m = Movie.new(title: "Clockwork Orange")
m.save
puts m.title
m = Movie.new(title: "Goodfellas")
m.save
puts m.title
m = Movie.new(title: "Catch Me If You Can")
m.save
puts m.title
m = Movie.new(title: "Fargo")
m.save
puts m.title
m = Movie.new(title: "Fight Club")
m.save
puts m.title
m = Movie.new(title: "Broken Flowers")
m.save
puts m.title
m = Movie.new(title: "Blade Runner")
m.save
puts m.title
m = Movie.new(title: "Interstellar")
m.save
puts m.title
m = Movie.new(title: "Gravity")
m.save
puts m.title
m = Movie.new(title: "The Square")
m.save
puts m.title
m = Movie.new(title: "Grand Budapest Hotel")
m.save
puts m.title
puts


puts "Movies created"

