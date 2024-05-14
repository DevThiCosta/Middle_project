# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create 10 user records
require 'faker'
10.times do
 p User.create!(
    name: "#{Faker::Name.first_name} #{Faker::Name.last_name}",
    phone_number: Faker::PhoneNumber.phone_number.to_i,
    birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
    id_document: Faker::IdNumber.valid,
    address: Faker::Address.full_address,
    encrypted_password: Faker::Internet.password(min_length: 8),
    allow_alert: [true, false].sample,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
  )
end

# Create 20 event records
40.times do
  Event.create(
    local: Faker::Address.full_address,
    date: Faker::Date.forward(days: 365),
    artist: Faker::Music.band,
    age_rating: Faker::Number.between(from: 1, to: 18)
  )
end

# Create 100 ticket records
100.times do
 p Ticket.create!(
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    sector: Faker::Number.between(from: 1, to: 10),
    category: [['VIP'], ['Regular'], ['Economy']].sample,
    event: Event.all.sample,
    user: User.all.sample
  )
end
