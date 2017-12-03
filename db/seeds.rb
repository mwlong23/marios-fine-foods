# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.destroy_all
Review.destroy_all

250.times do |index|
  product = Product.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph(2, false, 4),
    country_of_origin: Faker::Coffee.origin,
    price: Faker::Commerce.price,
    updated_at: Faker::Date.between(20.days.ago, 2.days.ago),
    created_at: Faker::Date.between_except(1.year.ago, 1.year.from_now, 21.days.ago))
  50.times do |index|
    review = Review.create!(
      username: Faker::DragonBall.character,
      rating: Faker::Number.between(1, 5),
      written_review: Faker::RickAndMorty.quote,
      updated_at: Faker::Date.between(20.days.ago, 2.days.ago),
      created_at: Faker::Date.between_except(1.year.ago, 1.year.from_now, 21.days.ago),
      product_id: product.id)
  end
end

20.times do |index|
  product = Product.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph(2, false, 4),
    country_of_origin: "USA",
    price: Faker::Commerce.price,
    updated_at: Faker::Date.between(20.days.ago, 2.days.ago),
    created_at: Faker::Date.between_except(1.year.ago, 1.year.from_now, 21.days.ago))
  3.times do |index|
    review = Review.create!(
      username: Faker::DragonBall.character,
      rating: Faker::Number.between(1, 5),
      written_review: Faker::RickAndMorty.quote,
      updated_at: Faker::Date.between(20.days.ago, 2.days.ago),
      created_at: Faker::Date.between_except(1.year.ago, 1.year.from_now, 21.days.ago),
      product_id: product.id)
  end
end
