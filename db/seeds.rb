# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

Mark.destroy_all
Plant.destroy_all
# Chatroom.destroy_all
User.destroy_all
Message.destroy_all

puts "Creating plants..."

2.times do |n|
  user = User.create!(
    email: Faker::Internet.email,
    password: 123456,
    username: "Sprout",
    description: "Plant lover"
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



# Chatroom.create!(name: "Gingko House", user_1_id: User.first.id, user_2_id: User.last.id)
# Chatroom.create!(name: "Cedar House", user_1_id: 1, user_2_id: 2)
# Chatroom.create!(name: "Pine House", user_1_id: 1, user_2_id: 2)


puts "Finished!"
