# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

10.times do
  User.create(
    name: "#{Faker::Name.first_name} #{Faker::Name.last_name}",
    phone_number: Faker::PhoneNumber.phone_number,
    birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
    id_document: Faker::IdNumber.valid,
    country: Faker::Address.country,
    address: Faker::Address.full_address,
    password: Faker::Internet.password(min_length: 8),
    allow_alert: [true, false].sample
  )
end

20.times do
  Event.create(
    local: Faker::Address.full_address,
    date: Faker::Date.forward(days: 365),
    artist: Faker::Music.band,
    age_rating: Faker::Number.between(from: 1, to: 18)
  )
end

100.times do
  Ticket.create(
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    sector: Faker::Number.between(from: 1, to: 10),
    type: ['VIP', 'Regular', 'Economy'].sample,
  )
end
