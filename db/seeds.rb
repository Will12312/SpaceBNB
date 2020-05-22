
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

User.destroy_all
Travel.destroy_all


elon = User.create!(
    first_name: "Elon",
    last_name: "Tusk",
    username: "Futurist101",
    email: "elon@spacex.org",
    password: "tesla4ever",
    )
 spacex = Travel.create!(
    address: "California",
    destination:["Mercury", "Venus", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Earth", "Pluto"].sample,
    seats_available: 20,
    departure_date: "12-04-2021",
    organiser: elon,
    name_of_vehicle:"Space X Dragon",
    price: 500000
    )

 file1 = URI.open('https://www.nasaspaceflight.com/wp-content/uploads/2019/02/201922-171546.jpg')
spacex.photo.attach(io: file1, filename: 'spacex.jpg', content_type: 'image/jpg')

jeff = User.create!(
    first_name: "Jeff",
    last_name: "Bezos",
    username: "Futurist201",
    email: "jeff@amazone.org",
    password: "iamsuperman",
    )
 amazone = Travel.create!(
    address: "Washigton",
    destination:["Mercury", "Venus", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Earth", "Pluto"].sample,
    seats_available: 20,
    departure_date: "11-04-2021",
    organiser: jeff,
    name_of_vehicle:"Blue Origin",
    price: 500000
    )
file2 = URI.open('https://www.blueorigin.com/assets/BlueOrigin_NewShepard_Launch.jpg')
amazone.photo.attach(io: file2, filename: 'blueorigin.jpg', content_type: 'image/jpg')

 yoda = User.create!(
    first_name: "Yo",
    last_name: "da",
    username: "Jedi101",
    email: "yoda@theforce.org",
    password: "maytheforcebewithme",
    )
 starwars = Travel.create!(
    address: "Groenland",
    destination:["Mercury", "Venus", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Earth", "Pluto"].sample,
    seats_available: 30,
    departure_date: "12-08-2020",
    organiser: yoda,
    name_of_vehicle:"x-wing",
    price: 1000
    )

file3 = URI.open("https://vignette.wikia.nocookie.net/fr.starwars/images/6/60/Xwing-SWB.jpg/revision/latest/scale-to-width-down/1000?cb=20181020115727")
starwars.photo.attach(io: file3, filename: 'xwing.jpg', content_type: 'image/jpg')

 richard = User.create!(
    first_name: "Richard",
    last_name: "Brandson",
    username: "Futurist000",
    email: "Richard@virgin.com",
    password: "rocknroll",
    )
 virgin = Travel.create!(
    address: "England",
    destination:["Mercury", "Venus", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Earth", "Pluto"].sample,
    seats_available: 25,
    departure_date: "12-04-2030",
    organiser: richard,
    name_of_vehicle:"Virgin Hope",
    price: 0
    )

file4 = URI.open('https://www.laliberte.ch/media/image/7/normal/20141102212536463.jpg')
virgin.photo.attach(io: file4, filename: 'virgin.jpg', content_type: 'image/jpg')

 captain = User.create!(
    first_name: "Captain",
    last_name: "America",
    username: "captAmerica",
    email: "captain@spacex.org",
    password: "ironmansucks",
    )
 avengers = Travel.create!(
    address: "Russia",
    destination:["Mercury", "Venus", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Earth", "Pluto"].sample,
    seats_available: 7,
    departure_date: "1-07-2020",
    organiser: captain,
    name_of_vehicle:"AtomHawk",
    price: 1000000
    )

file5 = URI.open('https://i.pinimg.com/originals/1f/39/4f/1f394f0d92a507de1ea9becedbd4047d.jpg')
avengers.photo.attach(io: file5, filename: 'avengers.jpg', content_type: 'image/jpg')

 et = User.create!(
    first_name: "E .",
    last_name: "T",
    username: "telephonemaison",
    email: "et@yahoo.com",
    password: "Spielberg",
    )
 velo = Travel.create!(
    address: "Canada",
    destination:["Mercury", "Venus", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Earth", "Pluto"].sample,
    seats_available: 1,
    departure_date: "12-06-2020",
    organiser: et,
    name_of_vehicle:"Bike",
    price: 20
    )

 file6 = URI.open('https://www.fictiontofact.com/files/media/52162/et.png')
velo.photo.attach(io: file6, filename: 'et.jpg', content_type: 'image/jpg')

 luke = User.create!(
    first_name: "Luke",
    last_name: "Skywalker",
    username: "Iamtheforce",
    email: "Luke@theforce.com",
    password: "iamyourson",
    )
 starwars1 = Travel.create!(
    address: "Belgium",
    destination:["Mercury", "Venus", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Earth", "Pluto"].sample,
    seats_available: 12,
    departure_date: "24-05-2021",
    organiser: luke,
    name_of_vehicle:"Millenium Falcon",
    price: 20000
    )

 file7 = URI.open('https://cdn.shopify.com/s/files/1/1048/8552/products/mil_falcon_prem_large.png?v=1503316783')
starwars1.photo.attach(io: file7, filename: 'falcon.png', content_type: 'image/png')

 marty = User.create!(
    first_name: "Marty",
    last_name: "McFly",
    username: "realfuturist",
    email: "Marty@fromthefutur.org",
    password: "delorean",
    )
 delorean = Travel.create!(
    address: "Marocco",
    destination:["Mercury", "Venus", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Earth", "Pluto"].sample,
    seats_available: 5,
    departure_date: "12-04-2021",
    organiser: marty,
    name_of_vehicle:"Delorean",
    price: 1000
    )

 file8 = URI.open('https://static.mmzstatic.com/wp-content/uploads/2016/01/delorean-retour.jpg')
delorean.photo.attach(io: file8, filename: 'delorean.jpg', content_type: 'image/jpg')


 han = User.create!(
    first_name: "Han",
    last_name: "Solo",
    username: "Starwars7sucks",
    email: "han@solo.org",
    password: "IloveLeia",
    )
 porsche = Travel.create!(
    address: "France",
    destination:["Mercury", "Venus", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Earth", "Pluto"].sample,
    seats_available: 20,
    departure_date: "12-08-2020",
    organiser: han,
    name_of_vehicle:"Proschecraft",
    price: 30000
    )

 file9 = URI.open('https://www.forbes.fr/wp-content/uploads/2019/12/960x0-11-e1576486629882-740x370.jpg')
porsche.photo.attach(io: file9, filename: 'porsche.jpg', content_type: 'image/jpg')

 james = User.create!(
    first_name: "James T.",
    last_name: "Kirk",
    username: "Starttrek",
    email: "James@startrek.org",
    password: "Ipreferstarwars",
    )
 startrek = Travel.create!(
    address: "Spain",
    destination:["Mercury", "Venus", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Earth", "Pluto"].sample,
    seats_available: 200,
    departure_date: "25-05-2020",
    organiser: james,
    name_of_vehicle:"Star Trek Craft",
    price: 10000
    )

file10 = URI.open('https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/qhlcbirwule2cby26kkm.png')
startrek.photo.attach(io: file10, filename: 'startrek.jpg', content_type: 'image/jpg')
