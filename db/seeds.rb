# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

Mark.destroy_all
Plant.destroy_all
Chatroom.destroy_all
User.destroy_all
Message.destroy_all


  user = User.new(
    email: "brane.bencic@gmail.com",
    password: 123456,
    username: "Brane",
    description: "I am an enthusiastic programmer and a plant lover."
  )

  mango = Plant.new( name: "Mango", category: "Trees", lighting: "🌞🌞🌞", watering: "💧💧", user_id: user.id, latitude: 52.4349, longitude: 13.6351)
  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662105212/Sprouts/img_17_fsnmrp.jpg")
  mango = Plant.new(title: "mango sprout", body: "A healthy mango baby")
  mango.photo.attach(io: file, filename: "mango.jpg", content_type: "image/jpg")
  mango.save

  sansiviera = Plant.new( name: "Sansiviera", category: "House Plants", lighting: "🌞🌞🌞", watering: "💧💧", user_id: user.id, latitude: 52.4349, longitude: 13.6351)
  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662033354/Sprouts/image_8_lulbom.jpg")
  sansiviera = Plant.new(title: "sansiviera plant", body: "Sansiviera dolce vita")
  sansiviera.photo.attach(io: file, filename: "sansiviera.jpg", content_type: "image/jpg")
  sansiviera.save

end
puts "Brane is born!"


  user = User.new(
    email: "lucinejaff@gmail.com",
    password: 123456,
    username: "Lucine",
    description: "I love my plants, coding, and meditation."
  )

  monstera = Plant.new( name: "Monstera", category: "House Plants", lighting: "🌞", watering: "💧", user_id: user.id, latitude: 51.8349, longitude: 12.9051)
  pothos = Plant.new( name: "Pothos Plant", category: "Climbers", lighting: "🌞🌞🌞", watering: "💧💧", user_id: user.id, latitude: 52.8349, longitude: 12.9051)

end

puts "Lucine is born!"


  user = User.new(
    email: "logosemre@gmail.com",
    password: 123456,
    username: "Emre",
    description: "Hi! This is Emre. A philosopher, musician, programmer and in love with green."
  )

  red_prayer = Plant.new( name: "Red Prayer", category: "House Plants", lighting: "🌞🌞", watering: "💧💧",  user_id: user.id, latitude: 52.5588, longitude: 13.2884)
  pilea = Plant.new( name: "Pilea Plant", category: "House Plants", lighting: "🌞", watering: "💧💧",  user_id: user.id, latitude: 52.4905, longitude: 13.3145)

end

puts "Emre is born!"


puts "Emre is born! but where is Brane 👻"

# Create Raphi

  user = User.new(
    email: "raphaellasidb@gmail.com",
    password: 123456,
    username: "Raphaella",
    description: "Raphaella is a plant afficianado from Colombia. She bakes awesome cookies and is the queen of CSS"
  )

  rubber_plant = Plant.new(name: "Rubber Plant", category: "House Plants", lighting: "🌞🌞", watering: "💧💧", user_id: user.id, latitude: 52.5200, longitude: 13.4050)
  nepenthes = Plant.new( name: "Nepenthes", category: "House Plants", lighting: "🌞🌞🌞🌞", watering: "💧💧💧💧", user_id: user.id, latitude: 52.5200, longitude: 13.4050)


puts "Raphi is born!"

# Create Sprouty
  user = User.new(
    email: "claire@queen.com",
    password: 123456,
    username: "Sprouty",
    description: "I am super smart and I care for plants."
  )

  palm = Plant.new( name: "Palm Tree", category: "Trees", lighting: "🌞🌞🌞", watering: "💧",  user_id: user.id, latitude: 52.4983, longitude: 13.4070)
  monstera = Plant.new( name: "Monstera", category: "House Plants", lighting: "🌞", watering: "💧", user_id: user.id, latitude: 52.4983, longitude: 13.4070)

puts "Sprouty is born!"

Chatroom.create!(name: "Gingko House", user_1: User.first, user_2: User.third)
Chatroom.create!(name: "Cedar House", user_1: User.second, user_2: User.first)
Chatroom.create!(name: "Cedar House", user_1: User.second, user_2: User.third)

puts "Chatrooms Gingko House, Cedar House, Pine House, and Oak House are created!"

puts "Let's attach photos now"

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
article = Article.new(title: "NES", body: "A great console")
article.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
article.save

puts "Finished!"
