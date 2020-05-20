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



a = User.create!(email: "rentamon@gmail.com", password: "396396")
  pikachu = Character.create(
    name: "Pikachu",
    user: a,
    price: 100,
    status: true,
    category: "laundry",
    address: "Brazil",
    description: "Cute"
    )

  puts "created pickachu"

  pikachu.photo.attach(io: URI.open('https://d29zunrt9sid73.cloudfront.net/speaker_media/asset/28695/portrait_70_28695.png'), filename: 'pokemon.png', content_type: 'image/png')
    q = Booking.create!(
      character: pikachu,
      user: a,
      start_date: 2020-04-20,
      end_date: 2020-05-01,
      confirmed: true
      )

b = User.create!(email: "rentamon2@gmail.com", password: "396396")
  hulk = Character.create(
    name: "Hulk",
    user: b,
    price: 200,
    status: true,
    category: "construction",
    address: "Seoul",
    description: "Smart, Good manner(?) if you are nice to him"
    )

  puts "created hulk"

  hulk.photo.attach(io: URI.open('https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fblogs-images.forbes.com%2Frobcain%2Ffiles%2F2017%2F07%2FHulk.jpg'), filename: 'hulk.jpg', content_type: 'image/jpg')
    z = Booking.create!(
      character: hulk,
      user: b,
      start_date: 2020-05-20,
      end_date: 2020-06-01,
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
