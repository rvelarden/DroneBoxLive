# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Drone.destroy_all
User.destroy_all
Booking.destroy_all

User.create(username: "Romina", email: "rominapaola.velarde@gmail.com")

Drone.create(image: "https://aircargoworld.com/wp-content/uploads/2018/09/0905_flytrex-mule-on-ground.png", model: Faker::Drone.name, location: Faker::Address.city, category: 'Personal')

Drone.create(image: "https://aircargoworld.com/wp-content/uploads/2018/09/0905_flytrex-mule-on-ground.png", model: Faker::Drone.name, location: Faker::Address.city, category: 'Industrial')
 
5.times do
    Booking.create(drone: Drone.all.sample, from_address:Faker::Address.street_address, to_address:Faker::Address.street_address)
end 

puts "seeded!"