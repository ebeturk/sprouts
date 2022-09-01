# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

# Mark.destroy_all
# Plant.destroy_all
# User.destroy_all
# Chatroom.destroy_all
# Message.destroy_all

puts "Creating users and plants. And chatrooms also..."

2.times do |n|
  user = User.create!(
    email: Faker::Internet.email,
    password: 123456,
    username: "Sprout",
    description: "Plant lover"
  )
  pilea = Plant.create!(name: "Pilea", category: "House Plants", lighting: "🌞🌞", watering: "💧💧💧", user_id: user.id, latitude: 52.5200, longitude: 13.4050)
  monstera = Plant.create!( name: "Monstera", category: "House Plants", lighting: "🌞", watering: "💧",   user_id: user.id, latitude: 52.4905, longitude: 13.3145)
  sunflower = Plant.create!( name: "Sunflower", category: "Flowers", lighting: "🌞🌞🌞", watering: "💧💧💧",  user_id: user.id, latitude: 52.4983, longitude: 13.4070)
  lavender = Plant.create!( name: "Lavender", category: "Flowers", lighting: "🌞🌞🌞", watering: "💧💧💧",  user_id: user.id, latitude: 52.5588, longitude: 13.2884)
  pearl_ivy = Plant.create!( name: "Pearl Ivy", category: "Climbers", lighting: "🌞🌞", watering: "💧💧",  user_id: user.id, latitude: 52.4349, longitude: 13.6351)
end

Chatroom.create!(name: "general", user_1_id: 6, user_2_id: 7)

Mark.create!(user_id: 8, plant_id: 33)

puts "Finished!"
