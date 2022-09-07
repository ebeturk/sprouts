# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

require "open-uri"

puts "Let's first delete the old stuff..."

Mark.destroy_all
Message.destroy_all
Chatroom.destroy_all
Plant.destroy_all
User.destroy_all

puts "TOTAL DESTRUCTION!"

"OK, now we can create a new world."

user = User.create!(
  email: "brane.bencic@gmail.com",
    password: 123456,
    username: "Brane",
    description: "I am an enthusiastic programmer and a plant lover."
  )


  mango = Plant.create!( name: "Mango", category: "Trees", lighting: "🌞🌞🌞", watering: "💧💧", temperature: "🌡🌡🌡", user_id: user.id, latitude: 52.4349, longitude: 13.6351)
  sanseveria = Plant.create!( name: "Sanseveria", category: "House Plants", lighting: "🌞🌞🌞", watering: "💧💧", temperature: "🌡🌡", user_id: user.id, latitude: 53.0349, longitude: 14.0351)

puts "Brane is born!"


user = User.create!(
  email: "lucinejaff@gmail.com",
    password: 123456,
    username: "Lucine",
    description: "I love my plants, coding, and meditation."
  )

  monstera = Plant.create!( name: "Monstera", category: "House Plants", lighting: "🌞", watering: "💧", user_id: user.id, latitude: 51.8349, longitude: 12.9051)
  pothos = Plant.create!( name: "Pothos Plant", category: "Climbers", lighting: "🌞🌞🌞", watering: "💧💧", user_id: user.id, latitude: 52.8349, longitude: 13.1351)


puts "Lucine is born!"

  user = User.create!(
    email: "logosemre@gmail.com",
    password: 123456,
    username: "Emre",
    description: "Hi! This is Emre. A philosopher, musician, programmer and in love with green."
  )

  pilea = Plant.create!( name: "Pilea Plant", category: "House Plants", lighting: "🌞", watering: "💧💧",  user_id: user.id, latitude: 52.4905, longitude: 13.3145)
  red_prayer = Plant.create!( name: "Red Prayer", category: "House Plants", lighting: "🌞🌞", watering: "💧💧",  user_id: user.id, latitude: 52.5588, longitude: 13.2884)


  red_prayer = Plant.new( name: "Maranta", category: "House Plants", lighting: "🌞🌞", watering: "💧💧",  user_id: emre.id, latitude: 52.5588, longitude: 13.2884)
  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662495214/Sprouts/image_7_of2doy.jpg")
  red_prayer.photo.attach(io: file, filename: "maranta.jpg", content_type: "image/jpg")
  red_prayer.save

  pilea = Plant.new( name: "Pilea", category: "House Plants", lighting: "🌞", watering: "💧💧",  user_id: emre.id, latitude: 52.4905, longitude: 13.3145)
  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662105224/Sprouts/img_28_optdha.jpg")
  pilea.photo.attach(io: file, filename: "pilea.jpg", content_type: "image/jpg")
  pilea.save

puts "Emre is born!"


# Create Raphi


  user = User.create!(
    email: "raphaellasidb@gmail.com",
    password: 123456,
    username: "Raphaella",
    description: "Raphaella is a plant afficianado from Colombia. She bakes awesome cookies and is the queen of CSS"
  )

  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662499531/Sprouts/brane_swcsy8.jpg")
  raphi.photo.attach(io: file, filename: "raphi.jpg", content_type: "image/jpg")
  raphi.save

end

puts "Raphi is born!"


  user = User.create!(
    email: "claire@queen.com",
    password: 123456,
    username: "Claire",
    description: "I am smart and I take good care of my plants."
  )

  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662499531/Sprouts/brane_swcsy8.jpg")
  claire.photo.attach(io: file, filename: "claire.jpg", content_type: "image/jpg")
  claire.save

end

puts "Sprouty is born!"

Chatroom.create!(name: "Gingko House", user_1_id: User.first.id, user_2_id: User.last.id)
Chatroom.create!(name: "Cedar House", user_1_id: User.second.id, user_2_id: User.first.id)
Chatroom.create!(name: "Pine House", user_1_id: User.third.id, user_2_id: User.first.id)
Chatroom.create!(name: "Oak House", user_1_id: User.last.id, user_2_id: User.second.id)

puts "Chatrooms Gingko House, Cedar House, Pine House, and Oak House are created!"

puts "Finished!"
