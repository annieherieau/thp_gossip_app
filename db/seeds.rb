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
text_array = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ultrices neque ornare aenean euismod elementum. Potenti nullam ac tortor vitae purus faucibus. Aliquet sagittis id consectetur purus ut faucibus pulvinar. Id ornare arcu odio ut sem nulla pharetra diam. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor eu. Lorem sed risus ultricies tristique nulla aliquet enim tortor at. Fames ac turpis egestas integer eget aliquet nibh praesent. In pellentesque massa placerat duis ultricies lacus. Donec massa sapien faucibus et molestie ac feugiat. Viverra tellus in hac habitasse platea dictumst vestibulum rhoncus est. Ac odio tempor orci dapibus. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. Sagittis nisl rhoncus mattis rhoncus urna neque viverra justo nec.".split('. ')

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
    description: text_array.sample,
    # foreign key
    city: City.all.sample
  )
end
puts '--- 10 users ---'



