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
  "https://picsum.photos/200/200?random=1",
  "https://picsum.photos/200/200?random=2",
  "https://picsum.photos/200/200?random=3",
  "https://picsum.photos/200/200?random=4",
  "https://picsum.photos/200/200?random=5",
  "https://picsum.photos/200/200?random=6",
  "https://picsum.photos/200/200?random=7",
  "https://picsum.photos/200/200?random=8",
  "https://picsum.photos/200/200?random=9",
  "https://picsum.photos/200/200?random=10",
  "https://picsum.photos/200/200?random=11",
  "https://picsum.photos/200/200?random=12",
  "https://picsum.photos/200/200?random=13",
  "https://picsum.photos/200/200?random=14",
  "https://picsum.photos/200/200?random=15",
  "https://picsum.photos/200/200?random=16",
  "https://picsum.photos/200/200?random=17",
  "https://picsum.photos/200/200?random=18",
  "https://picsum.photos/200/200?random=19",
  "https://picsum.photos/200/200?random=20",
  "https://picsum.photos/200/200?random=21",
  "https://picsum.photos/200/200?random=22",
  "https://picsum.photos/200/200?random=23",
  "https://picsum.photos/200/200?random=24",
  "https://picsum.photos/200/200?random=25",
  "https://picsum.photos/200/200?random=26",
  "https://picsum.photos/200/200?random=27",
  "https://picsum.photos/200/200?random=28",
  "https://picsum.photos/200/200?random=29",
  "https://picsum.photos/200/200?random=30",
  "https://picsum.photos/200/200?random=31",
  "https://picsum.photos/200/200?random=32",
  "https://picsum.photos/200/200?random=33",
  "https://picsum.photos/200/200?random=34",
  "https://picsum.photos/200/200?random=35",
  "https://picsum.photos/200/200?random=36",
  "https://picsum.photos/200/200?random=37",
  "https://picsum.photos/200/200?random=38",
  "https://picsum.photos/200/200?random=39",
  "https://picsum.photos/200/200?random=40",
  "https://picsum.photos/200/200?random=41",
  "https://picsum.photos/200/200?random=42",
  "https://picsum.photos/200/200?random=43",
  "https://picsum.photos/200/200?random=44",
  "https://picsum.photos/200/200?random=45",
  "https://picsum.photos/200/200?random=46",
  "https://picsum.photos/200/200?random=47",
  "https://picsum.photos/200/200?random=48",
  "https://picsum.photos/200/200?random=49",
  "https://picsum.photos/200/200?random=50",
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
events = [
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Michael Jackson",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: image_urls.sample
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Elvis Presley",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: image_urls.sample
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Frank Sinatra",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: image_urls.sample
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Bob Marley",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: image_urls.sample
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Madonna",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: image_urls.sample
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Eminem",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: image_urls.sample
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Beyoncé",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: image_urls.sample
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Prince",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: image_urls.sample
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "David Bowie",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: image_urls.sample
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Aretha Franklin",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: image_urls.sample
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "AC/DC",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: image_urls.sample
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Metallica",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: image_urls.sample
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "The Rolling Stones",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: image_urls.sample
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Janis Joplin",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: image_urls.sample
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Johnny Cash",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: image_urls.sample
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Jimi Hendrix",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: image_urls.sample
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Oasis",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: image_urls.sample
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Ray Charles",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: image_urls.sample
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Nina Simone",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: image_urls.sample
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Bruno Mars",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: image_urls.sample
  }
]

events.each do |event_params|
  Event.create(event_params)
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
