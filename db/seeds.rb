# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'faker'

Author.destroy_all
Post.destroy_all

a = Author.create!(
  name: "Arthur Dent",
  role: Faker::Movies::HitchhikersGuideToTheGalaxy.specie,
  avatar: "https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters_opt/p-the-hitchhikers-guide-to-the-galaxy-martin-freeman.jpg",
  location: Faker::Movies::HitchhikersGuideToTheGalaxy.location
)

b = Author.create!(
  name: "Zaphod Beeblebrox",
  role: Faker::Movies::HitchhikersGuideToTheGalaxy.specie,
  avatar: "https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters_opt/p-the-hitchhikers-guide-to-the-galaxy-sam-rockwell.jpg",
  location: Faker::Movies::HitchhikersGuideToTheGalaxy.location
)

c = Author.create!(
  name: "Ford Prefect",
  role: Faker::Movies::HitchhikersGuideToTheGalaxy.specie,
  avatar: "https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters_opt/p-the-hitchhikers-guide-to-the-galaxy-mos-def.jpg",
  location: Faker::Movies::HitchhikersGuideToTheGalaxy.location
)

d = Author.create!(
 name: "Trillion Astra",
 role: "Human Space Genius",
 avatar: "https://66.media.tumblr.com/83e86482cc7bb4e63824a81e93ee21ad/c30b2cc8dfe4e116-db/s500x750/327f934dd3eed38be9945f3faf3821dfc8da0941.jpg",
 location: "The Restaurant at the End of the Universe"
)

Post.create!(
  title: Faker::Movies::HitchhikersGuideToTheGalaxy.unique.marvin_quote,
  body: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
  tags: [Faker::Movies::HitchhikersGuideToTheGalaxy.planet, Faker::Movies::HitchhikersGuideToTheGalaxy.starship, Faker::Movies::HitchhikersGuideToTheGalaxy.character],
  image_url: "https://resizing.flixster.com/8FHt3QZ5kxZkzGG8HkkkBegC5jI=/740x290/v1.bjs1NDU0Nzc7ajsxODQ1NjsxMjAwOzE5MjA7MTA4MA",
  author: a
)

Post.create!(
  title: Faker::Movies::HitchhikersGuideToTheGalaxy.unique.marvin_quote,
  body: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
  tags: [Faker::Movies::HitchhikersGuideToTheGalaxy.planet, Faker::Movies::HitchhikersGuideToTheGalaxy.starship, Faker::Movies::HitchhikersGuideToTheGalaxy.character],
  image_url: "https://cdn.digg.com/images/ba6f14883d194306a2813f8467b9b6fa_5f6677546c224241ab2879e1e68504eb_header.jpeg",
  author: b
)

Post.create(
  title: "Beautiful, Charming, Devastatingly Intelligent",
  body: "After all, with a degree in maths and another in astrophysics what else was there to do? It was either that or the dole queue again on Monday.",
  image_url: "https://i.pinimg.com/originals/ed/50/95/ed50953d815426fee9290cf8efdefa10.jpg",
  tags: ["Trillian", "Human", "Tricia McMillan"],
  author: d
)

Post.create(
  title: Faker::Movies::HitchhikersGuideToTheGalaxy.unique.marvin_quote,
  body: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
  tags: [Faker::Movies::HitchhikersGuideToTheGalaxy.planet, Faker::Movies::HitchhikersGuideToTheGalaxy.starship, Faker::Movies::HitchhikersGuideToTheGalaxy.character],
  image_url: "https://4.bp.blogspot.com/-b0nErE5um8c/Ww1sufj38MI/AAAAAAAAMdE/EqDkZgNs8KoSBFxIKPFZWHAqkjsO7bBvwCLcBGAs/s1600/vlcsnap-2018-05-29-10h07m25s289.png",
  author: c
)

Post.create!(
  title: Faker::Movies::HitchhikersGuideToTheGalaxy.unique.marvin_quote,
  body: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
  tags: [Faker::Movies::HitchhikersGuideToTheGalaxy.planet, Faker::Movies::HitchhikersGuideToTheGalaxy.starship, Faker::Movies::HitchhikersGuideToTheGalaxy.character],
  image_url: "https://cdn.hswstatic.com/gif/hitchhikers-history-23.jpg",
  author: a
)

Post.create(
  title: Faker::Movies::HitchhikersGuideToTheGalaxy.unique.marvin_quote,
  body: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
  tags: [Faker::Movies::HitchhikersGuideToTheGalaxy.planet, Faker::Movies::HitchhikersGuideToTheGalaxy.starship, Faker::Movies::HitchhikersGuideToTheGalaxy.character],
  image_url: "https://galactichitchhikers.com/wp-content/uploads/2019/09/Hitchhikers-Guide-to-the-Galaxy-2005-00-42-19-1068x534.jpg",
  author: b
)

Post.create(
  title: Faker::Movies::HitchhikersGuideToTheGalaxy.unique.marvin_quote,
  body: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
  tags: [Faker::Movies::HitchhikersGuideToTheGalaxy.planet, Faker::Movies::HitchhikersGuideToTheGalaxy.starship, Faker::Movies::HitchhikersGuideToTheGalaxy.character],
  image_url: "https://cnet4.cbsistatic.com/img/SsRYeKARiALkR5Ng9tBe5sGo9eM=/1092x0/2019/07/24/c1d41c96-8bbe-457f-8ee4-6372c59f8089/hitchhikers1.jpg",
  author: c
)

Post.create(
  title: "Beautiful, Charming, Devastatingly Intelligent",
  body: "After all, with a degree in maths and another in astrophysics what else was there to do? It was either that or the dole queue again on Monday.",
  image_url: "https://i.pinimg.com/originals/ed/50/95/ed50953d815426fee9290cf8efdefa10.jpg",
  tags: ["Trillian", "Human", "Tricia McMillan"],
  author: d
)

authors = [ a, b, c, d ]


60.times do
  post = Post.new(
    title: Faker::Movie.title,
    body: Faker::Movie.quote+Faker::Movie.quote+Faker::Movie.quote+Faker::Movie.quote+Faker::Movie.quote,
    image_url: "https://source.unsplash.com/random?sig=#{rand(1..30)}",
    tags: [Faker::Movies::HitchhikersGuideToTheGalaxy.planet, Faker::Movies::HitchhikersGuideToTheGalaxy.starship, Faker::Movies::HitchhikersGuideToTheGalaxy.character],
    author: authors.sample
  )
  post.save!
end