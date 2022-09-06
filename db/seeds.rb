# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"


Message.destroy_all
Chatroom.destroy_all
Match.destroy_all
Mark.destroy_all
Plant.destroy_all
User.destroy_all

puts "Creating users and plants. And chatrooms also..."

1.times do |n|
  user = User.create!(
    email: "brane.bencic@gmail.com",
    password: 123456,
    username: "Brane",
    description: "I am an enthusiastic programmer and a plant lover."
  )

  mango = Plant.create!( name: "Mango", category: "Trees", lighting: "🌞🌞🌞", watering: "💧💧", user_id: user.id, latitude: 52.4349, longitude: 13.6351)
  sanseveria = Plant.create!( name: "Sanseveria", category: "House Plants", lighting: "🌞🌞🌞", watering: "💧💧", user_id: user.id, latitude: 53.0349, longitude: 14.0351)
  monstera = Plant.create!( name: "Monstera", category: "House Plants", lighting: "🌞", watering: "💧", user_id: user.id, latitude: 51.8349, longitude: 12.9051)
  pothos = Plant.create!( name: "Pothos Plant", category: "Climbers", lighting: "🌞🌞🌞", watering: "💧💧", user_id: user.id, latitude: 52.8349, longitude: 13.1351)

end
puts "Brane is born!"

1.times do |n|
  user = User.create!(
    email: "lucinejaff@gmail.com",
    password: 123456,
    username: "Lucine",
    description: "I love my plants, coding, and meditation."
  )

  mango = Plant.create!( name: "Mango", category: "Trees", lighting: "🌞🌞🌞", watering: "💧💧", user_id: user.id, latitude: 52.4349, longitude: 13.6351)
  sanseveria = Plant.create!( name: "Sanseveria", category: "House Plants", lighting: "🌞🌞🌞", watering: "💧💧", user_id: user.id, latitude: 53.0349, longitude: 14.0351)
  monstera = Plant.create!( name: "Monstera", category: "House Plants", lighting: "🌞", watering: "💧", user_id: user.id, latitude: 51.8349, longitude: 12.9051)
  pothos = Plant.create!( name: "Pothos Plant", category: "Climbers", lighting: "🌞🌞🌞", watering: "💧💧", user_id: user.id, latitude: 52.8349, longitude: 13.1351)

end

puts "Lucine is born!"

1.times do |n|
  user = User.create!(
    email: "logosemre@gmail.com",
    password: 123456,
    username: "Emre",
    description: "Hi! This is Emre. A philosopher, musician, programmer and in love with green."
  )

  rubber_plant = Plant.create!(name: "Rubber Plant", category: "House Plants", lighting: "🌞🌞", watering: "💧💧", user_id: user.id, latitude: 52.5200, longitude: 13.4050)
  pilea = Plant.create!( name: "Pilea Plant", category: "House Plants", lighting: "🌞", watering: "💧💧",  user_id: user.id, latitude: 52.4905, longitude: 13.3145)
  palm = Plant.create!( name: "Palm Tree", category: "Trees", lighting: "🌞🌞🌞", watering: "💧",  user_id: user.id, latitude: 52.4983, longitude: 13.4070)
  red_prayer = Plant.create!( name: "Red Prayer", category: "House Plants", lighting: "🌞🌞", watering: "💧💧",  user_id: user.id, latitude: 52.5588, longitude: 13.2884)

  mango = Plant.create!( name: "Mango", category: "Trees", lighting: "🌞🌞🌞", watering: "💧💧", user_id: user.id, latitude: 52.4349, longitude: 13.6351)
  sanseveria = Plant.create!( name: "Sanseveria", category: "House Plants", lighting: "🌞🌞🌞", watering: "💧💧", user_id: user.id, latitude: 53.0349, longitude: 14.0351)
  monstera = Plant.create!( name: "Monstera", category: "House Plants", lighting: "🌞", watering: "💧", user_id: user.id, latitude: 51.8349, longitude: 12.9051)
  pothos = Plant.create!( name: "Pothos Plant", category: "Climbers", lighting: "🌞🌞🌞", watering: "💧💧", user_id: user.id, latitude: 52.8349, longitude: 13.1351)

end

puts "Emre is born!"

1.times do |n|
  user = User.create!(
    email: "raphaellasidb@gmail.com",
    password: 123456,
    username: "Raphaella",
    description: "Raphaella is a plant afficianado from Colombia. She bakes awesome cookies and is the queen of CSS"
  )

  rubber_plant = Plant.create!(name: "Rubber Plant", category: "House Plants", lighting: "🌞🌞", watering: "💧💧", user_id: user.id, latitude: 52.5200, longitude: 13.4050)
  pilea = Plant.create!( name: "Pilea Plant", category: "House Plants", lighting: "🌞", watering: "💧💧",  user_id: user.id, latitude: 52.4905, longitude: 13.3145)
  palm = Plant.create!( name: "Palm Tree", category: "Trees", lighting: "🌞🌞🌞", watering: "💧",  user_id: user.id, latitude: 52.4983, longitude: 13.4070)
  red_prayer = Plant.create!( name: "Red Prayer", category: "House Plants", lighting: "🌞🌞", watering: "💧💧",  user_id: user.id, latitude: 52.5588, longitude: 13.2884)

  mango = Plant.create!( name: "Mango", category: "Trees", lighting: "🌞🌞🌞", watering: "💧💧", user_id: user.id, latitude: 52.4349, longitude: 13.6351)
  sanseveria = Plant.create!( name: "Sanseveria", category: "House Plants", lighting: "🌞🌞🌞", watering: "💧💧", user_id: user.id, latitude: 53.0349, longitude: 14.0351)
  monstera = Plant.create!( name: "Monstera", category: "House Plants", lighting: "🌞", watering: "💧", user_id: user.id, latitude: 51.8349, longitude: 12.9051)
  pothos = Plant.create!( name: "Pothos Plant", category: "Climbers", lighting: "🌞🌞🌞", watering: "💧💧", user_id: user.id, latitude: 52.8349, longitude: 13.1351)

end

puts "Rafi is born!"

1.times do |n|
  user = User.create!(
    email: "claire@queen.com",
    password: 123456,
    username: "Sprouty",
    description: "I am here simply because you guys are too cool."
  )

  mango = Plant.create!( name: "Mango", category: "Trees", lighting: "🌞🌞🌞", watering: "💧💧", user_id: user.id, latitude: 52.4349, longitude: 13.6351)
  sanseveria = Plant.create!( name: "Sanseveria", category: "House Plants", lighting: "🌞🌞🌞", watering: "💧💧", user_id: user.id, latitude: 53.0349, longitude: 14.0351)
  monstera = Plant.create!( name: "Monstera", category: "House Plants", lighting: "🌞", watering: "💧", user_id: user.id, latitude: 51.8349, longitude: 12.9051)
  pothos = Plant.create!( name: "Pothos Plant", category: "Climbers", lighting: "🌞🌞🌞", watering: "💧💧", user_id: user.id, latitude: 52.8349, longitude: 13.1351)

end

puts "Sprouty is born!"

Chatroom.create!(name: "Gingko House", user_1_id: User.first.id, user_2_id: User.last.id)
Chatroom.create!(name: "Cedar House", user_1_id: User.second.id, user_2_id: User.first.id)
Chatroom.create!(name: "Pine House", user_1_id: User.third.id, user_2_id: User.first.id)
Chatroom.create!(name: "Oak House", user_1_id: User.last.id, user_2_id: User.second.id)

puts "Chatrooms Gingko House, Cedar House, Pine House, and Oak House are created!"

puts "Finished!"
