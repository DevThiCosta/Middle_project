# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Faker::Config.locale = 'pt-BR'

# Create 10 user records
10.times do
  p User.create!(
    name: "#{Faker::Name.first_name} #{Faker::Name.last_name}",
    phone_number: Faker::PhoneNumber.phone_number,
    birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
    id_document: Faker::CPF.cpf,
    address: Faker::Address.full_address,
    encrypted_password: Faker::Internet.password(min_length: 8),
    allow_alert: [true, false].sample,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8)
  )
end

p User.create!(
  name: "thiago",
  phone_number: Faker::PhoneNumber.phone_number,
  birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
  id_document: Faker::CPF.cpf,
  address: Faker::Address.full_address,
  encrypted_password: "123456",
  allow_alert: [true, false].sample,
  email: "thiago@teste.com",
  password: "123456"
)

# Create 20 event records
events = [
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Michael Jackson",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/v1715969584/middleLeWagon/Artists/vaofgttltyi93b3tnljp.jpg"
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Elvis Presley",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/v1715969583/middleLeWagon/Artists/lqrkmnyvbcz0b3owkgdu.jpg"
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Frank Sinatra",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/v1715969584/middleLeWagon/Artists/oobzuimv8otlaj5c8ti6.jpg"
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Bob Marley",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/v1715984865/middleLeWagon/Artists/bob_marley_l5msaz.jpg"
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Madonna",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/v1715969584/middleLeWagon/Artists/ojn5ay2zl5dy1znvgwe1.jpg"
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Eminem",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/v1715969584/middleLeWagon/Artists/nctqgtippfnonasdyfij.jpg"
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Beyoncé",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/v1715974901/middleLeWagon/Artists/kdph2noe5gtpyo8fkpt4.jpg"
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Prince",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/v1715974901/middleLeWagon/Artists/lce19jxfiryi9f8nd5uc.jpg"
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "David Bowie",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/v1715969583/middleLeWagon/Artists/qzhg0zund90sz2e3btkz.jpg"
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Aretha Franklin",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/v1715974900/middleLeWagon/Artists/jzxwdtkegrypqs8vokmu.jpg"
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "AC/DC",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/v1715974900/middleLeWagon/Artists/asbcn7b5fgtkfpnp6ixm.png"
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Metallica",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/v1715969584/middleLeWagon/Artists/jxxgtjvyrcznw0t1hgxj.jpg"
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "The Rolling Stones",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/v1715969585/middleLeWagon/Artists/tq86wtpo7vlwrjnxswe7.jpg"
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Janis Joplin",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/v1715969584/middleLeWagon/Artists/zrsarequo50vyyh809n2.jpg"
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Johnny Cash",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/v1715969584/middleLeWagon/Artists/dvhrgrhcw1lbtwwodwq0.jpg"
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Jimi Hendrix",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/v1715969584/middleLeWagon/Artists/vlfnf6ezygca4oodfbzh.jpg"
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Oasis",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/v1715969585/middleLeWagon/Artists/buiehzaykv11cpibxqma.jpg"
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Ray Charles",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/v1715969585/middleLeWagon/Artists/cy68bs7rwgc2i5ppvvii.jpg"
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Nina Simone",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/v1715969585/middleLeWagon/Artists/lh2fnvf26zwvmcqntbaf.jpg"
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Bruno Mars",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/v1715969583/middleLeWagon/Artists/wtdlxb2fjyczje8xyvhz.jpg"
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
