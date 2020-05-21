# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Travel.destroy_all

10.times do
  new_user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Name.unique.name,
    email: Faker::Internet.email,
    password: Faker::Crypto.md5,
    )

  new_travel = Travel.create!(
    destination:["Mercury", "Venus", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Earth", "pluto"].sample,
    seats_available: rand(1..20),
    departure_date:Faker::Date.forward(days: 100),
    organiser: new_user,
    name_of_vehicle:Faker::Movies::StarWars.vehicle,
    price: rand(100..1000)
    )
end

  william = User.create!(
    first_name: "william",
    last_name: "guillerm",
    username: "williamguillerm",
    email: "william@guillerm.com",
    password: "william",
    admin: true
    )
