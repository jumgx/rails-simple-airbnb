# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
wagon = { name: "Le Wagon", address: "20 rue des capucins 69001 LYON", description: "learn to code in 9 weeks", price_per_night: 50, number_of_guests: 18 }
ecole_herriot =  { name: "Ecole Edouard Herriot", address: "56A Shoreditch High St, London E1 6PQ", description: "école maternelle et élémentaire", price_per_night: 0, number_of_guests: 468 }

[ wagon, ecole_herriot].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts Flat.count
puts "Finished!"
