require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb
puts 'Cleaning database...'
Restaurant.destroy_all
Review.destroy_all

puts 'Creating restaurants with reviews...'

categories = ["chinese", "italian", "japanese", "french", "belgian"]

20.times do
  restaurant = Restaurant.create!({
    name: Faker::FunnyName.name,
    address: Faker::Address.full_address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  })

  rand(3..6).times do
    Review.create!({
    content: Faker::Hipster.paragraph.to_s,
    rating: rand(0..5),
    restaurant: restaurant
    })
  end

end
puts 'Finished!'
