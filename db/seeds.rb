# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Character.destroy_all
User.destroy_all

category = Character::CATEGORY

c=User.create!(email: "boop@gmail.com", password: "123123", first_name: "Michelle", last_name: "Kim")

a = User.create!(email: "rentamon@gmail.com", password: "396396", first_name: "HyeJeong", last_name: "Kwon")

b = User.create!(email: "rentamon2@gmail.com", password: "396396", first_name: "Yiro", last_name: "Yi")

pikachu = Character.new(
    name: "Pikachu",
    user: a,
    price: 100,
    category: category.sample,
    address: "Brazil",
    description: "Cute"
    )
  puts "created pickachu"
  pikachu.photo.attach(io: URI.open('https://d29zunrt9sid73.cloudfront.net/speaker_media/asset/28695/portrait_70_28695.png'), filename: 'pokemon.png', content_type: 'image/png')
pikachu.save!


  hulk = Character.new(
    name: "Hulk",
    user: a,
    price: 200,
    category: category.sample,
    address: "Seoul",
    description: "Smart, Good manner(?) if you are nice to him"
    )
  puts "created hulk"
  hulk.photo.attach(io: URI.open('https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fblogs-images.forbes.com%2Frobcain%2Ffiles%2F2017%2F07%2FHulk.jpg'), filename: 'hulk.jpg', content_type: 'image/jpg')
hulk.save!

  buzz= Character.new(
    name: "Buzz",
    user: a,
    price: 23,
    category: category.sample,
    address: "Busan",
    description: "handsome"
    )
  puts "created Buzz"
  buzz.photo.attach(io: URI.open('https://i.pinimg.com/736x/67/1a/5e/671a5e550d91f7430bbfe111be76cab5.jpg'), filename: 'buzz.jpg', content_type: 'image/jpg')
buzz.save!

  dragonair= Character.new(
    name: "Dragonair",
    user: b,
    price: 430,
    category: category.sample,
    address: "Jeju-si",
    description: "fast"
    )

  puts "created Dragonair"

  dragonair.photo.attach(io: URI.open('https://i.pinimg.com/originals/b8/1e/18/b81e18a8277fa5ee43d765a3bb041c1a.jpg'), filename: 'dragonair.jpg', content_type: 'image/jpg')
  dragonair.save! 

  snorlax= Character.new(
    name: "Snorlax",
    user: b,
    price: 20,
    category: category.sample,
    address: "goyang-si",
    description: "On sale"
    )

  puts "created Snorlax"

  snorlax.photo.attach(io: URI.open('https://vignette.wikia.nocookie.net/pokemon/images/7/75/Snorlax_Pikachu%27s_Rescue_Adventure.png'), filename: 'snorlax.png', content_type: 'image/png')
  snorlax.save!

  blackwidow= Character.new(
    name: "Blackwidow",
    user: b,
    price: 2000,
    category: category.sample,
    address: "pyongyang",
    description: "Hulk's gf"
    )

  puts "created Blackwidow"

  blackwidow.photo.attach(io: URI.open('https://www.hypable.com/wp-content/uploads/2013/05/the-avengers-2-full-page-square-scarlet-black.jpg'), filename: 'blackwidow.jpg', content_type: 'image/jpg')
  blackwidow.save!


# # BOOKINGS
# y = Booking.create!(
#       character: snorlax,
#       user: a,
#       start_date: Date.new(2020-06-23),
#       end_date: Date.new(2020-07-27)
#       )

# c = Booking.create!(
#   character: blackwidow,
#   user: a,
#   start_date: Date.new(2020-05-23),
#   end_date: Date.new(2020-07-27)
#   )

# q = Booking.create!(
#   character: pikachu,
#   user: b,
#   start_date: Date.new(2020-04-20),
#   end_date: Date.new(2020-05-01)
#   )

# v = Booking.create!(
#   character: hulk,
#   user: b,
#   start_date: Date.new(2020-05-20),
#   end_date: Date.new(2020-06-01)
#   )
