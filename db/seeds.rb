# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all

puts "Creating four movies for DB"
puts

m = Movie.new(title: "Titanic", year: "1997", director: "James Cameron")
m.save
puts m.title
m = Movie.new(title: "The Big Lebowski", year: "1998", director: "Ethan Coen, Joel Coen")
m.save
puts m.title
m = Movie.new(title: "The Room", year: "2003", director: "Tommy Wiseau")
m.save
puts m.title
m = Movie.new(title: "2001: A Space Odyssey", year: "1968", director: "Stanley Kubrick")
m.save
puts m.title
puts

Movie.all

puts "Four movies created"

