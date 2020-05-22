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
  pikachu = Character.create(
    name: "Pikachu",
    user: a,
    price: 100,
    category: category.sample,
    address: "Brazil",
    description: "Cute"
    )

  puts "created pickachu"

  pikachu.photo.attach(io: URI.open('https://d29zunrt9sid73.cloudfront.net/speaker_media/asset/28695/portrait_70_28695.png'), filename: 'pokemon.png', content_type: 'image/png')
    q = Booking.create!(
      character: pikachu,
      user: a,
      start_date: Date.new(2020-04-20),
      end_date: Date.new(2020-05-01),
      confirmed: true
      )

b = User.create!(email: "rentamon2@gmail.com", password: "396396", first_name: "Yiro", last_name: "Yi")
  hulk = Character.create(
    name: "Hulk",
    user: b,
    price: 200,
    category: category.sample,
    address: "Seoul",
    description: "Smart, Good manner(?) if you are nice to him"
    )

  puts "created hulk"

  hulk.photo.attach(io: URI.open('https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fblogs-images.forbes.com%2Frobcain%2Ffiles%2F2017%2F07%2FHulk.jpg'), filename: 'hulk.jpg', content_type: 'image/jpg')
    v = Booking.create!(
      character: hulk,
      user: b,
      start_date: Date.new(2020-05-20),
      end_date: Date.new(2020-06-01),
      confirmed: true
      )

  buzz= Character.create(
    name: "Buzz",
    user: a,
    price: 23,
    category: category.sample,
    address: "Busan",
    description: "handsome"
    )

  puts "created Buzz"

  buzz.photo.attach(io: URI.open('https://i.pinimg.com/736x/67/1a/5e/671a5e550d91f7430bbfe111be76cab5.jpg'), filename: 'buzz.jpg', content_type: 'image/jpg')
    n = Booking.create!(
      character: buzz,
      user: a,
      start_date: Date.new(2020-07-20),
      end_date: Date.new(2020-07-21),
      confirmed: true
      )

  dragonair= Character.create(
    name: "Dragonair",
    user: b,
    price: 430,
    category: category.sample,
    address: "Jeju-si",
    description: "fast"
    )

  puts "created Dragonair"

  dragonair.photo.attach(io: URI.open('https://i.pinimg.com/originals/b8/1e/18/b81e18a8277fa5ee43d765a3bb041c1a.jpg'), filename: 'dragonair.jpg', content_type: 'image/jpg')
    m = Booking.create!(
      character: dragonair,
      user: b,
      start_date: Date.new(2020-07-23),
      end_date: Date.new(2020-07-27),
      confirmed: true
      )

  snorlax= Character.create(
    name: "Snorlax",
    user: a,
    price: 20,
    category: category.sample,
    address: "goyang-si",
    description: "On sale"
    )

  puts "created Snorlax"

  snorlax.photo.attach(io: URI.open('https://vignette.wikia.nocookie.net/pokemon/images/7/75/Snorlax_Pikachu%27s_Rescue_Adventure.png'), filename: 'snorlax.png', content_type: 'image/png')
    y = Booking.create!(
      character: snorlax,
      user: b,
      start_date: Date.new(2020-06-23),
      end_date: Date.new(2020-07-27),
      confirmed: true
      )

  blackwidow= Character.create(
    name: "Blackwidow",
    user: b,
    price: 2000,
    category: category.sample,
    address: "pyongyang",
    description: "Hulk's gf"
    )

  puts "created Blackwidow"

  blackwidow.photo.attach(io: URI.open('https://www.hypable.com/wp-content/uploads/2013/05/the-avengers-2-full-page-square-scarlet-black.jpg'), filename: 'blackwidow.jpg', content_type: 'image/jpg')
    c = Booking.create!(
      character: blackwidow,
      user: b,
      start_date: Date.new(2020-05-23),
      end_date: Date.new(2020-07-27),
      confirmed: true
      )
# e = User.create!(email: "rentamon@gmail.com", password: "396396")
#   f = Character.create!(
#     name: "Pikachu",
#     user: e,
#     price: 100,
#     status: true,
#     category: "laundry",
#     address: "200 huahaizhonglu, shanghai, China",
#     description: "Baby friendly"
#     )
#     g = Booking.create!(
#       character: f,
#       user: e,
#       start_date: 2020-04-20,
#       end_date: 2020-05-01,
#       confirmed: true
#       )
# a = User.create!(email: "rentamon@gmail.com", password: "396396")
#   d = Character.create!(
#     name: "Pikachu",
#     user: a,
#     price: 100,
#     status: true,
#     category: "laundry",
#     address: "200 huahaizhonglu, shanghai, China",
#     description: "Cute"
#     )
#     q = Booking.create!(
#       character: d,
#       user: a,
#       start_date: 2020-04-20,
#       end_date: 2020-05-01,
#       confirmed: true
#       )
# a = User.create!(email: "rentamon@gmail.com", password: "396396")
#   d = Character.create!(
#     name: "Pikachu",
#     user: a,
#     price: 100,
#     status: true,
#     category: "laundry",
#     address: "200 huahaizhonglu, shanghai, China",
#     description: "Cute"
#     )
#     q = Booking.create!(
#       character: d,
#       user: a,
#       start_date: 2020-04-20,
#       end_date: 2020-05-01,
#       confirmed: true
#       )
# a = User.create!(email: "rentamon@gmail.com", password: "396396")
#   d = Character.create!(
#     name: "Pikachu",
#     user: a,
#     price: 100,
#     status: true,
#     category: "laundry",
#     address: "200 huahaizhonglu, shanghai, China",
#     description: "Cute"
#     )
#     q = Booking.create!(
#       character: d,
#       user: a,
#       start_date: 2020-04-20,
#       end_date: 2020-05-01,
#       confirmed: true
#       )
# 10.times do
#   u = User.create!(
#     email: Faker::Internet.email,
#     password: "123123"
#     )
#   rand(1..3).times do
#     c = Character.create!(
#       name: Faker::Games::Pokemon.name,
#       user: u,
#       price: rand(20..50),
#       status: true,
#       category: Faker::Job.key_skill,
#       address: Faker::Address.full_address,
#       description: Faker::Games::Pokemon.move
#       )
#     rand(1..4).times do
#       b = Booking.create!(
#         character: c,
#         user: User.all.sample,
#         start_date: Faker::Date.backward(days: rand(2..14)),
#         end_date: Faker::Date.forward(days: rand(1..23)),
#         confirmed: true
#         )
#     end
#   end
# end
