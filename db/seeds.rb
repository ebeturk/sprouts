# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

# Interest.destroy_all
# Plant.destroy_all
# User.destroy_all
# Chatroom.destroy_all
# Message.destroy_all

puts "Creating plants..."

2.times do |n|
  user = User.create!(
    email: Faker::Internet.email,
    password: 123456,
    username: "Sprout",
    description: "Plant lover"
  )
  pilea = Plant.create!(name: "Pilea", category: "House Plants", lighting: "🌞🌞", watering: "💧💧💧", user_id: user.id)
  monstera = Plant.create!( name: "Monstera", category: "House Plants", lighting: "🌞", watering: "💧",   user_id: user.id)
  sunflower = Plant.create!( name: "Sunflower", category: "Flowers", lighting: "🌞🌞🌞", watering: "💧💧💧",  user_id: user.id)
  lavender = Plant.create!( name: "Lavender", category: "Flowers", lighting: "🌞🌞🌞", watering: "💧💧💧",  user_id: user.id)
  pearl_ivy = Plant.create!( name: "Pearl Ivy", category: "Climbers", lighting: "🌞🌞", watering: "💧💧",  user_id: user.id)
end

Chatroom.create!
Chatroom.create!
Chatroom.create!

puts "Finished!"
