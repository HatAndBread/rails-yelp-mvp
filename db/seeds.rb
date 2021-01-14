# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

30.times do
  restaurant = Restaurant.new
  restaurant.name = Faker::Restaurant.name
  restaurant.address = Faker::Address.street_address
  restaurant.phone_number = "#{rand(0..9).to_s}#{rand(0..9).to_s}#{rand(0..9).to_s}-#{rand(0..9).to_s}#{rand(0..9).to_s}#{rand(0..9).to_s}#{rand(0..9).to_s}-#{rand(0..9).to_s}#{rand(0..9).to_s}#{rand(0..9).to_s}#{rand(0..9).to_s}"
  restaurant.category = Restaurant::CATEGORIES.sample
  restaurant.save
  p restaurant
  puts restaurant.valid?
  10.times do
    review = Review.new
    review.rating = rand(1..5)
    review.content = Faker::Restaurant.review
    review.restaurant = restaurant
    review.save
    p review
  end
end
