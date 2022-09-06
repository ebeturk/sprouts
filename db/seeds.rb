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


puts "Brane is born!"


  user = User.new(
    email: "lucinejaff@gmail.com",
    password: 123456,
    username: "Lucine",
    description: "I love my plants, coding, and meditation."
  )

  monstera = Plant.new( name: "Monstera", category: "House Plants", lighting: "🌞", watering: "💧", user_id: user.id, latitude: 51.8349, longitude: 12.9051)
  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662495214/Sprouts/image_7_of2doy.jpg")
  monstera = Plant.new(title: "monstera", body: "A true beauty")
  monstera.photo.attach(io: file, filename: "monstera.jpg", content_type: "image/jpg")
  monstera.save
  pothos = Plant.new( name: "Pothos Plant", category: "Climbers", lighting: "🌞🌞🌞", watering: "💧💧", user_id: user.id, latitude: 52.8349, longitude: 12.9051)
  file = URI.open("https:///res-console.cloudinary.com/dzk0qfl8v/thumbnails/transform/v1/image/upload/v1662495627/https:///res-console.cloudinary.com/dzk0qfl8v/thumbnails/transform/v1/image/upload//v1662495627/U3Byb3V0cy9tYWhkaS1kYXN0bWFyZC03QVFvcHhwX0Jtdy11bnNwbGFzaF91NHY2amY=/drilldown")
  pothos = Plant.new(title: "pothos", body: "They call it the devil's ivy, but it's an angel.")
  pothos.photo.attach(io: file, filename: "pothos.jpg", content_type: "image/jpg")
  pothos.save

puts "Lucine is born!"


  user = User.new(
    email: "logosemre@gmail.com",
    password: 123456,
    username: "Emre",
    description: "Hi! This is Emre. A philosopher, musician, programmer and in love with green."
  )

  red_prayer = Plant.new( name: "Maranta", category: "House Plants", lighting: "🌞🌞", watering: "💧💧",  user_id: user.id, latitude: 52.5588, longitude: 13.2884)
  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662495214/Sprouts/image_7_of2doy.jpg")
  red_prayer = Plant.new(title: "maranta", body: "My favorite plant ever.")
  red_prayer.photo.attach(io: file, filename: "maranta.jpg", content_type: "image/jpg")
  red_prayer.save
  pilea = Plant.new( name: "Pilea", category: "House Plants", lighting: "🌞", watering: "💧💧",  user_id: user.id, latitude: 52.4905, longitude: 13.3145)
  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662105224/Sprouts/img_28_optdha.jpg")
  pilea = Plant.new(title: "pilea", body: "Yes, pileas are easy to grow. But they are more than easy to the eye.")
  pilea.photo.attach(io: file, filename: "pilea.jpg", content_type: "image/jpg")
  pilea.save


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
  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662496469/Sprouts/scott-webb-eA2z1JSzZFI-unsplash_but5vv.jpg")
  rubber_plant = Plant.new(title: "rubber_plant", body: "A classic every house needs.")
  rubber_plant.photo.attach(io: file, filename: "rubber_plant.jpg", content_type: "image/jpg")
  rubber_plant.save

  nepenthes = Plant.new( name: "Nepenthes", category: "House Plants", lighting: "🌞🌞🌞🌞", watering: "💧💧💧💧", user_id: user.id, latitude: 52.5200, longitude: 13.4050)
  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662496666/Sprouts/olena-shmahalo-e40BXByhjPM-unsplash_gi7ohp.jpg")
  nepenthes = Plant.new(title: "nepenthes", body: "The most attractive pitcher plant of the planet.")
  nepenthes.photo.attach(io: file, filename: "nepenthes.jpg", content_type: "image/jpg")
  nepenthes.save


puts "Raphi is born!"

# Create Sprouty
  user = User.new(
    email: "claire@queen.com",
    password: 123456,
    username: "Claire",
    description: "I am super smart and I care for plants."
  )

  palm = Plant.new( name: "Palm Tree", category: "Trees", lighting: "🌞🌞🌞", watering: "💧",  user_id: user.id, latitude: 52.4983, longitude: 13.4070)
  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662496824/Sprouts/image_6_o1bfvg.jpg")
  palm = Plant.new(title: "palm", body: "Plant with a style.")
  palm.photo.attach(io: file, filename: "palm.jpg", content_type: "image/jpg")
  palm.save
  monstera = Plant.new( name: "Monstera", category: "House Plants", lighting: "🌞", watering: "💧", user_id: user.id, latitude: 52.4983, longitude: 13.4070)
  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662105212/Sprouts/img_10_dp3s44.jpg")
  monstera = Plant.new(title: "monstera", body: "Isn't it gorgeous?")
  monstera.photo.attach(io: file, filename: "monstera.jpg", content_type: "image/jpg")
  monstera.save

puts "Claire the Queen is born!"

Chatroom.create!(name: "Gingko House", user_1: User.first, user_2: User.third)
Chatroom.create!(name: "Cedar House", user_1: User.second, user_2: User.first)
Chatroom.create!(name: "Cedar House", user_1: User.second, user_2: User.third)

puts "Chatrooms Gingko House, Cedar House, Pine House, and Oak House are created!"

puts "Let's attach photos now"

puts "Finished!"
