# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
image_urls = [
  "https://picsum.photos/200/300",
  "https://picsum.photos/200/301",
  "https://picsum.photos/200/302",
  "https://picsum.photos/200/303",
  "https://picsum.photos/200/304",
  "https://picsum.photos/200/305",
  "https://picsum.photos/200/306",
  "https://picsum.photos/200/307",
  "https://picsum.photos/200/308",
  "https://picsum.photos/200/309",
  "https://picsum.photos/200/310",
  "https://picsum.photos/200/311",
  "https://picsum.photos/200/312",
  "https://picsum.photos/200/313",
  "https://picsum.photos/200/314",
  "https://picsum.photos/200/315",
  "https://picsum.photos/200/316",
  "https://picsum.photos/200/317",
  "https://picsum.photos/200/318",
  "https://picsum.photos/200/319",
  "https://picsum.photos/200/320",
  "https://picsum.photos/200/321",
  "https://picsum.photos/200/322",
  "https://picsum.photos/200/323",
  "https://picsum.photos/200/324",
  "https://picsum.photos/200/325",
  "https://picsum.photos/200/326",
  "https://picsum.photos/200/327",
  "https://picsum.photos/200/328",
  "https://picsum.photos/200/329",
  "https://picsum.photos/200/330",
  "https://picsum.photos/200/331",
  "https://picsum.photos/200/332",
  "https://picsum.photos/200/333",
  "https://picsum.photos/200/334",
  "https://picsum.photos/200/335",
  "https://picsum.photos/200/336",
  "https://picsum.photos/200/337",
  "https://picsum.photos/200/338",
  "https://picsum.photos/200/339",
  "https://picsum.photos/200/340",
  "https://picsum.photos/200/341",
  "https://picsum.photos/200/342",
  "https://picsum.photos/200/343",
  "https://picsum.photos/200/344",
  "https://picsum.photos/200/345",
  "https://picsum.photos/200/346",
  "https://picsum.photos/200/347",

]

# Create 10 user records
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
    age_rating: Faker::Number.between(from: 1, to: 18),
    photo: image_urls.sample
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
