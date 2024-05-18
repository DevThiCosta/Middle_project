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

arenas_urls = [
  'https://res.cloudinary.com/dxf2n51ev/image/upload/v1715969622/middleLeWagon/Arenas/tjowpr6d043nl3jf9wwg.png',
  'https://res.cloudinary.com/dxf2n51ev/image/upload/v1715969621/middleLeWagon/Arenas/lgeeh5eriro07lshkorw.png',
  'https://res.cloudinary.com/dxf2n51ev/image/upload/v1715969621/middleLeWagon/Arenas/mrjhqesmcwuz8ymk2pkv.png'
]


# Create 10 user records
puts "creating users"
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
    password: Faker::Internet.password(min_length: 8),
    avatar: Faker::Avatar.image(slug: "my-own-slug", size: "100x100", format: "png")
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
  password: "123456",
  avatar: Faker::Avatar.image(slug: "my-own-slug", size: "100x100", format: "png")
)

# Create 20 event records
puts "creating events"
events = [
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Michael Jackson",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/f_auto,q_auto/v1/middleLeWagon/Artists/zjvtrgmwtsevk2rcvhdg",
    arena: arenas_urls.sample,
    description: "Prepare-se para uma noite mágica e eletrizante! Michael Jackson, o icônico Rei do Pop, está de volta ao Brasil para um show histórico. Com sua presença carismática e talento inigualável, ele promete encantar fãs de todas as gerações."
      },
      {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Elvis Presley",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/f_auto,q_auto/v1/middleLeWagon/Artists/agrhafgiy2qsyusfusd5",
    arena: arenas_urls.sample,
    description: "Prepare-se para uma experiência única e emocionante! Elvis Presley, o lendário Rei do Rock, está de volta e pronto para incendiar os palcos do Brasil. Este espetáculo, apresentado pelo Ministério da Cultura e Bradesco Seguros, promete uma homenagem inesquecível à vida e obra de um dos maiores ícones mundiais da música. 🎤🕺🌟 "
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Frank Sinatra",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/f_auto,q_auto/v1/middleLeWagon/Artists/mer474ubbhtxzeyhzhna",
    arena: arenas_urls.sample,
    description: "Você está prestes a testemunhar uma noite mágica com Frank Sinatra, o lendário Rei do Swing, em um show exclusivo no Brasil. Prepare-se para uma experiência que combina elegância, música atemporal e a voz inconfundível de Sinatra. 🎤🎶"
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Bob Marley",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/f_auto,q_auto/v1/middleLeWagon/Artists/tsyoy46mj0vuqtiyzb8c",
    arena: arenas_urls.sample,
    description: "Prepare-se para uma experiência transcendental com o lendário Bob Marley! O ícone do reggae está de volta ao Brasil para um show único e cheio de energia. Com sua voz inconfundível e mensagens de amor e liberdade, Bob Marley promete uma noite que ficará marcada na memória de todos os presentes."
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Madonna",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/f_auto,q_auto/v1/middleLeWagon/Artists/gwckpuhvv9hqtcuebbru",
    arena: arenas_urls.sample,
    description: "Prepare-se para uma noite épica com a rainha do pop! Madonna está de volta ao Brasil para encerrar sua turnê mundial, “The Celebration Tour”, comemorando seus 40 anos de carreira. Com sua energia contagiante e hits icônicos, ela promete uma apresentação que ficará marcada na memória de todos os fãs."
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Eminem",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/f_auto,q_auto/v1/middleLeWagon/Artists/atjto6nznnsz4bjumlj5",
    arena: arenas_urls.sample,
    description: "Prepare-se para uma experiência épica com o lendário Eminem! O rapper norte-americano, conhecido por suas letras afiadas e performances intensas, está de volta ao Brasil para um show que promete agitar a cena do hip-hop. Com sua presença magnética e habilidade lírica inigualável, Eminem vai incendiar o palco e deixar os fãs extasiados."
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Beyoncé",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/f_auto,q_auto/v1/middleLeWagon/Artists/o1jfgwa1anrcaey5luqs",
    arena: arenas_urls.sample,
    description: "Prepare-se para uma experiência inesquecível com a icônica Beyoncé! A diva do pop e do R&B está prestes a desembarcar no Brasil com sua turnê mundial “Renaissance”. Com sua voz poderosa, coreografias impecáveis e presença de palco magnética, Beyoncé promete agitar os fãs brasileiros."

  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Prince",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/f_auto,q_auto/v1/middleLeWagon/Artists/gdpscoiyeawoyecjgzyg",
    arena: arenas_urls.sample,
    description: "Prepare-se para uma experiência transcendental com o lendário Prince! O ícone da música pop, conhecido por sua versatilidade, talento e estilo único, está de volta ao Brasil para um show que promete encantar fãs de todas as idades. Com sua voz inconfundível, habilidades instrumentais e presença de palco magnética, Prince vai levar o público a uma viagem musical inesquecível."
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "David Bowie",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/f_auto,q_auto/v1/middleLeWagon/Artists/nnv1ffta3qqvvciben4r",
    arena: arenas_urls.sample,
    description: "David Bowie visitou o Brasil pela primeira vez em 19 de setembro de 1992 com sua turnê “Sound and Vision”. O cantor britânico fez quatro shows no país. Agora 32 anos depois ele retorna em sua turne de despedida “Last Song” para se despedir dos fãs brasileiros. Não perca essa oportunidade única de ver um dos maiores artistas de todos os tempos em sua última apresentação no Brasil."
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Aretha Franklin",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/f_auto,q_auto/v1/middleLeWagon/Artists/tibj5wgm50eukndhqnxh",
    arena: arenas_urls.sample,
    description: "Aretha Franklin, a lendária 'Rainha do Soul,' desembarcou no Brasil para uma série de shows inesquecíveis. A turnê 'Respect' celebrou sua carreira extraordinária e sua voz poderosa que tocou corações em todo o mundo. Com sua presença de palco cativante e energia contagiante, Aretha Franklin encantou o público com seus sucessos atemporais, como 'Respect', 'Natural Woman' e 'I Say a Little Prayer'. Não perca a oportunidade de reviver a magia e a emoção de uma das maiores artistas de todos os tempos."
      },
      {
      local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "AC/DC",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/f_auto,q_auto/v1/middleLeWagon/Artists/mcomursauoyi2pcl5fwe",
    arena: arenas_urls.sample,
    description: "O lendário AC/DC, uma das maiores bandas de hard rock de todos os tempos, aterrissou no Brasil com sua turnê “High Voltage”. Os irmãos Angus Young (guitarra) e Malcolm Young (guitarra base), juntamente com o vocalista Brian Johnson, o baixista Cliff Williams e o baterista Phil Rudd, trouxeram sua energia elétrica e riffs de guitarra marcantes para os fãs brasileiros.."
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Metallica",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/f_auto,q_auto/v1/middleLeWagon/Artists/tvnf3cfbnkp4ogzig2my",
    arena: arenas_urls.sample,
    description: "O lendário Metallica, uma das maiores bandas de heavy metal do mundo, aterrissou no Brasil com sua turnê “M72 World Tour”. James Hetfield (vocal/guitarra), Lars Ulrich (bateria), Kirk Hammett (guitarra solo) e Robert Trujillo (baixo) trouxeram sua energia explosiva e riffs marcantes para os fãs brasileiros.."
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "The Rolling Stones",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/f_auto,q_auto/v1/middleLeWagon/Artists/qmiiiote6hzaw3zhbv6u",
    arena: arenas_urls.sample,
    description: "Os lendários Rolling Stones, uma das maiores bandas de rock de todos os tempos, estão prestes a voltar ao Brasil com sua turnê “Stones Forever”. Mick Jagger (vocal), Keith Richards (guitarra), Ronnie Wood (guitarra) e Charlie Watts (bateria) trarão sua energia contagiante e clássicos inesquecíveis para os fãs brasileiros. Prepare-se para uma noite épica e cheia de rock'n'roll!"
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Janis Joplin",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/f_auto,q_auto/v1/middleLeWagon/Artists/g9hmvf2ozfpqz9iv940l",
    arena: arenas_urls.sample,
    description: "Prepare-se para uma experiência única com a lendária Janis Joplin! A roqueira americana, conhecida por sua voz inconfundível e atitude rebelde, decidiu fazer uma turnê pelo Brasil e escolheu o Rio de Janeiro como um dos destinos. Com sua energia contagiante e paixão pela música, Janis promete uma noite de rock, blues e muita emoção.."
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Johnny Cash",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/f_auto,q_auto/v1/middleLeWagon/Artists/yvhfhxqsbdlqu6kmhnhl",
    arena: arenas_urls.sample,
    description: "Prepare-se para uma experiência única com o lendário Johnny Cash! O “Homem de Preto”, conhecido por sua voz profunda e suas canções icônicas, está de volta aos palcos em uma turnê especial. Com imagens projetadas do programa de TV “The Johnny Cash Show” acima do palco, uma banda ao vivo e cantores acompanharão Johnny em perfeita sincronia."
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Jimi Hendrix",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/f_auto,q_auto/v1/middleLeWagon/Artists/bblfwwscsdwzvhvqn0ti",
    arena: arenas_urls.sample,
    description: "Prepare-se para uma experiência transcendental com o lendário Jimi Hendrix! O “Homem de Preto”, conhecido por sua voz profunda e suas habilidades inigualáveis na guitarra, está de volta ao Brasil para um show que promete encantar fãs de todas as idades. Com sua presença magnética e estilo único, Hendrix vai levar o público a uma viagem musical inesquecível.."
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Oasis",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/v1715969585/middleLeWagon/Artists/buiehzaykv11cpibxqma.jpg",
    arena: arenas_urls.sample,
    description: "Prepare-se para uma noite épica de rock britânico! A lendária banda Oasis está de volta para sua turnê de despedida, celebrando os trinta anos do álbum icônico “Definitely Maybe”. Com hits que marcaram gerações, Liam Gallagher e sua trupe prometem uma apresentação inesquecível."
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Ray Charles",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/f_auto,q_auto/v1/middleLeWagon/Artists/bz44yeejgbovxque36jl",
    arena: arenas_urls.sample,
    description: "Prepare-se para uma experiência única com o lendário Ray Charles! O “Gênio” da música, conhecido por sua voz inconfundível e habilidades excepcionais no piano, está de volta ao Brasil para uma série de concertos que prometem encantar fãs de todas as idades. Com sua presença magnética e paixão pela música, Ray Charles vai levar o público a uma viagem emocional inesquecível.."
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Nina Simone",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/f_auto,q_auto/v1/middleLeWagon/Artists/f4j4quezuktnvucpaeju",
    arena: arenas_urls.sample,
    description: "Prepare-se para uma experiência única com a lendária Nina Simone! A cantora, pianista e ativista norte-americana, conhecida por sua voz inconfundível e paixão pela música, esteve no Brasil em três ocasiões marcantes. Com sua presença magnética e estilo único, Nina Simone conquistou o público brasileiro com suas interpretações emocionantes."
  },
  {
    local: Faker::Address.full_address,
    date: Faker::Date.between(from: Date.new(Date.today.year, 5, 18), to: Date.new(Date.today.year, 12, 31)),
    artist: "Bruno Mars",
    age_rating: [8, 10, 13, 15, "18+"].sample,
    photo: "https://res.cloudinary.com/dxf2n51ev/image/upload/f_auto,q_auto/v1/middleLeWagon/Artists/uk8juwltzdld2qtl8b7e",
    arena: arenas_urls.sample,
    description: "Peter Gene Hernandez (nascido em 8 de outubro de 1985), conhecido profissionalmente como Bruno Mars, é um cantor, compositor, produtor musical e músico americano. Ele é conhecido por suas performances no palco, showmanship retrô e por se apresentar em uma ampla variedade de estilos musicais, incluindo pop, R&B, funk, soul, reggae, hip hop e rock. Mars é acompanhado por sua banda, os Hooligans, que tocam uma variedade de instrumentos, como guitarra elétrica, baixo, piano, teclados, bateria e metais, e também atuam como cantores e dançarinos de apoio."
      }
    ]

    events.each do |event_params|
  Event.create(event_params)
end

# Create 100 ticket records
puts "creating tickets"
100.times do
  p Ticket.create!(
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    sector: Faker::Number.between(from: 1, to: 10),
    category: [['VIP'], ['Regular'], ['Economy']].sample,
    event: Event.all.sample,
    user_id: User.all.sample.id
  )
end
