# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(name: "default", email: "default@dev.com", password: "some_password", password_confirmation: "some_password") 
20.times do
  Book.create(user: user, title: Faker::Book.title, description: Faker::Book.genre, price: Faker::Number.between(from: 3000, to: 35000), status: %w[available reserved buyed].sample)
end