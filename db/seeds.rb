# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'
puts '---Seed & Destroy---'
City.destroy_all
User.destroy_all

10.times do |i|
  City.create!(
    zip_code: Faker::Address.zip_code.split('-').first,
    name: Faker::Address.city 
  )
end
puts '--- 10 cities ---'

10.times do |i|
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Name.first_name+'.'+Faker::Name.last_name+'@email.com',
    age: rand(18..90),
    description: Faker::Lorem.paragraph(sentence_count: rand(2..4)),
    # foreign key
    city: City.all.sample
  )
end
puts '--- 10 users ---'

20.times do |i|
  Gossip.create(
    title: Faker::Lorem.words(number: rand(3..8)),
    content: Faker::Lorem.paragraph(sentence_count: rand(2..8)),
    # foreign key
    user: User.all.sample
  )
end

