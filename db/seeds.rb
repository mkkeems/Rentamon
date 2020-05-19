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
  d = Character.create!(
    name: "Pikachu",
    user: a,
    price: 100,
    status: true,
    category: "laundry",
    address: "200 huahaizhonglu, shanghai, China"
    )
    q = Booking.create!(
      character: d,
      user: a,
      start_date: 2020-04-20,
      end_date: 2020-05-01,
      confirmed: true
      )

10.times do
  u = User.create!(
    email: Faker::Internet.email,
    password: "123123"
    )
  rand(1..3).times do
    c = Character.create!(
      name: Faker::Games::Pokemon.name,
      user: u,
      price: rand(20..50),
      status: true,
      category: Faker::Job.key_skill,
      address: Faker::Address.full_address
      )
    rand(1..4).times do
      b = Booking.create!(
        character: c,
        user: User.all.sample,
        start_date: Faker::Date.backward(days: rand(2..14)),
        end_date: Faker::Date.forward(days: rand(1..23)),
        confirmed: true
        )
    end
  end
end
