# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts "Let's first delete the old stuff..."

Match.destroy_all
Mark.destroy_all
Message.destroy_all
Chatroom.destroy_all
Plant.destroy_all
User.destroy_all

puts "TOTAL DESTRUCTION!"

"OK, now we can create a new world."

  brane = User.new(
    email: "brane.bencic@gmail.com",
    password: 123456,
    username: "Brane",
    description: "I am an enthusiastic programmer and a plant lover."
  )

  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662542808/Sprouts/IMG_462E0EE16731-1_nm53xu.jpg")
  brane.photo.attach(io: file, filename: "brane.jpg", content_type: "image/jpg")
  brane.save

  mango = Plant.new( name: "Mango", category: "Trees", lighting: "🌞🌞🌞", watering: "💧💧", user_id: brane.id, latitude: 52.4349, longitude: 13.6351)
  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662105212/Sprouts/img_17_fsnmrp.jpg")
  mango.photo.attach(io: file, filename: "mango.jpg", content_type: "image/jpg")
  mango.save

  sansiviera = Plant.new( name: "Sansiviera", category: "House Plants", lighting: "🌞🌞🌞", watering: "💧💧", user_id: brane.id, latitude: 52.4349, longitude: 13.6351)

  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662556034/Sprouts/img_7_gksxgh.jpg")

  sansiviera.photo.attach(io: file, filename: "sansiviera.jpg", content_type: "image/jpg")
  sansiviera.save


puts "Brane is born!"


  lucine = User.new(
    email: "lucinejaff@gmail.com",
    password: 123456,
    username: "Lucine",
    description: "I love my plants, coding, and meditation."
  )

  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662541465/Sprouts/Lucine_Jaff_afcowu.jpg")
  lucine.photo.attach(io: file, filename: "lucine.jpg", content_type: "image/jpg")
  lucine.save

  monstera = Plant.new( name: "Monstera", category: "House Plants", lighting: "🌞", watering: "💧", user_id: lucine.id, latitude: 51.8349, longitude: 12.9051)
  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662495214/Sprouts/image_7_of2doy.jpg")
  monstera.photo.attach(io: file, filename: "monstera.jpg", content_type: "image/jpg")
  monstera.save

  pothos = Plant.new( name: "Pothos Plant", category: "Climbers", lighting: "🌞🌞🌞", watering: "💧💧", user_id: lucine.id, latitude: 52.8349, longitude: 12.9051)
  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662497762/Sprouts/feey-thyDnx5asaw-unsplash_lk8o9o.jpg")
  pothos.photo.attach(io: file, filename: "pothos.jpg", content_type: "image/jpg")
  pothos.save


puts "Lucine is born!"

  emre = User.new(
    email: "logosemre@gmail.com",
    password: 123456,
    username: "Emre",
    description: "Hi! This is Emre. A philosopher, musician, programmer and in love with green."
  )

  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662542188/Sprouts/20220907_111402_q9vtc7.png")
  emre.photo.attach(io: file, filename: "emre.png", content_type: "image/png")
  emre.save

  red_prayer = Plant.new( name: "Maranta", category: "House Plants", lighting: "🌞🌞", watering: "💧💧",  user_id: emre.id, latitude: 52.5588, longitude: 13.2884)
  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662105223/Sprouts/img_4_f9dlr5.jpg")
  red_prayer.photo.attach(io: file, filename: "maranta.jpg", content_type: "image/jpg")
  red_prayer.save

  pilea = Plant.new( name: "Pilea", category: "House Plants", lighting: "🌞", watering: "💧💧",  user_id: emre.id, latitude: 52.4905, longitude: 13.3145)
  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662105224/Sprouts/img_28_optdha.jpg")
  pilea.photo.attach(io: file, filename: "pilea.jpg", content_type: "image/jpg")
  pilea.save

puts "Emre is born!"

puts "Emre is born! but where is Brane 👻"

# Create Raphi

  raphi = User.new(
    email: "raphaellasidb@gmail.com",
    password: 123456,
    username: "Raphaella",
    description: "Raphaella is a plant afficianado from Colombia. She bakes awesome cookies and is the queen of CSS"
  )

  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662542390/Sprouts/20181231_223659_va2z5i.jpg")
  raphi.photo.attach(io: file, filename: "raphi.jpg", content_type: "image/jpg")
  raphi.save

  rubber_plant = Plant.new(name: "Rubber Plant", category: "House Plants", lighting: "🌞🌞", watering: "💧💧", user_id: raphi.id, latitude: 52.5200, longitude: 13.4050)
  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662496469/Sprouts/scott-webb-eA2z1JSzZFI-unsplash_but5vv.jpg")
  rubber_plant.photo.attach(io: file, filename: "rubber_plant.jpg", content_type: "image/jpg")
  rubber_plant.save

  nepenthes = Plant.new( name: "Nepenthes", category: "House Plants", lighting: "🌞🌞🌞🌞", watering: "💧💧💧💧", user_id: raphi.id, latitude: 52.5200, longitude: 13.4050)
  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662496666/Sprouts/olena-shmahalo-e40BXByhjPM-unsplash_gi7ohp.jpg")
  nepenthes.photo.attach(io: file, filename: "nepenthes.jpg", content_type: "image/jpg")
  nepenthes.save

puts "Raphi is born!"

# Create Sprouty
  claire = User.new(
    email: "claire@queen.com",
    password: 123456,
    username: "Claire",
    description: "I am smart and I take good care of my plants."
  )

  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1662543131/Sprouts/gisela-carolina-ALogxO1WJk0-unsplash_cgtns1.jpg")
  claire.photo.attach(io: file, filename: "claire.jpg", content_type: "image/jpg")
  claire.save



  palm = Plant.new( name: "Palm Tree", category: "Trees", lighting: "🌞🌞🌞", watering: "💧",  user_id: claire.id, latitude: 52.4983, longitude: 13.4070)
  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662496824/Sprouts/image_6_o1bfvg.jpg")
  palm.photo.attach(io: file, filename: "palm.jpg", content_type: "image/jpg")
  palm.save

  monstera = Plant.new( name: "Monstera", category: "House Plants", lighting: "🌞", watering: "💧", user_id: claire.id, latitude: 52.4983, longitude: 13.4070)
  file = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1662105212/Sprouts/img_10_dp3s44.jpg")
  monstera.photo.attach(io: file, filename: "monstera.jpg", content_type: "image/jpg")
  monstera.save

puts "Claire the Queen is born!"

gingko_house = Chatroom.new(name: "Gingko House", user_1: User.first, user_2: User.last)
gingko_house.save
cedar_house = Chatroom.new(name: "Cedar House", user_1: User.second, user_2: User.first)
cedar_house.save
pine_house = Chatroom.new(name: "Pine House ", user_1: User.third, user_2: User.second)
pine_house.save
oak_house = Chatroom.new(name: "Oak House", user_1: User.last, user_2: User.third)
oak_house.save

puts "Chatrooms Gingko House, Cedar House, Pine House, and Oak House are created!"

puts "Finished!"
