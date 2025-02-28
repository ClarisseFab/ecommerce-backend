# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
p "I destroy former seeds"

Order.destroy_all
OrderProduct.destroy_all
Wishlist.destroy_all
ShoppingCart.destroy_all
Product.destroy_all
User.destroy_all

p "I create a user"
User.create(email: 'test@test.fr', password: 'password')

p "I create products"
Product.create(
  name: 'Traversée du Vercors',
  price: 550,
  duration: 5,
  length: 69,
  difficulty: 'difficile',
  departure_place: 'Die',
  period: 'Eté',
  description: [
    'Traversez le Vercors en raquettes, tirez votre pulka et dormez dans la neige tel un trappeur. Une aventure hivernale unique dans un massif hyper sauvage !'
  ],
  photo: File.open(Rails.root.join('lib/assets/vercors.jpeg').to_s)
)

Product.create(
  name: 'Randonnée en raquettes en Savoie',
  price: 350,
  duration: 2,
  length: 12,
  difficulty: 'modérée',
  departure_place: 'Moutiers',
  period: 'Hiver',
  description: [
    "Découvrez la rando en raquettes, construisez un igloo et prennez l'apéro dans un refuge gardé inoubliable."
  ],
  photo: File.open(Rails.root.join('lib/assets/savoie.jpeg').to_s)
)

Product.create(
  name: 'Le tour du Mont Blanc',
  price: 1060,
  duration: 7,
  length: 110,
  difficulty: 'soutenu',
  departure_place: 'Chamonix',
  period: 'Printemps - Ete',
  description: [
    "Vivez une grande randonnée mythique entre la France, l'Italie et la Suisse avec un guide. Hébergement en refuge, portage des sacs et repas gourmands inclus.."
  ],
  photo: File.open(Rails.root.join('lib/assets/mont_blanc.jpeg').to_s)
)

Product.create(
  name: 'Week-end rando et initiation au bivouac ',
  price: 145,
  duration: 2,
  length: 14,
  difficulty: 'modéré',
  departure_place: 'Chambéry',
  period: 'Printemps - Ete - Automne',
  description: [
    "Direction la Savoie pour une initiation au bivouac en petit groupe, au plus près de la nature avec un guide local. Matériel de bivouac inclus."
  ],
  photo: File.open(Rails.root.join('lib/assets/bivouac.jpeg').to_s)
)

Product.create(
  name: 'Week-end rando, canoë et vélo',
  price: 440,
  duration: 4,
  length: 70,
  difficulty: 'modéré',
  departure_place: 'Saint Malo',
  period: 'Printemps - Ete - Automne',
  description: [
    "Vivez une aventure forte en Bretagne, en alternant rando, canoë et vélo sur la route de Saint Malo, en petit groupe et avec un guide local !"
  ],
  photo: File.open(Rails.root.join('lib/assets/canoe.jpeg').to_s)
)

Product.create(
  name: "A la découvert des Volcans d'Auvergne",
  price: 560,
  duration: 4,
  length: 70,
  difficulty: 'modéré',
  departure_place: 'Clermont-Ferrand',
  period: 'Printemps - Ete - Automne',
  description: [
    "Découvrez cette belle région et ses volcans, avec un guide passionné et passionant !"
  ],
  photo: File.open(Rails.root.join('lib/assets/auvergne.jpeg').to_s)
)

Product.create(
  name: "La traversée des Dolomites en refuges",
  price: 1300,
  duration: 7,
  length: 170,
  difficulty: 'difficile',
  departure_place: 'Italie',
  period: 'Printemps - Ete',
  description: [
    "Les Dolomites, un nom qui fait rêver tout randonneur... Un trek dans l’un des plus beaux massifs alpins d'Italie, à faire absolument !"
  ],
  photo: File.open(Rails.root.join('lib/assets/dolomites.jpeg').to_s)
)

Product.create(
  name: "Sur les traces du loup dans le Vercors",
  price: 420,
  duration: 3,
  length: 30,
  difficulty: 'modéré',
  departure_place: 'Genoble',
  period: 'Printemps - Ete - Automne',
  description: [
    "Pistez le loup pendant 3 jours au cœur d'un massif préservé, et découvrez avec Captain Damien tout ce qu'il faut savoir sur cet animal mystérieux !"
  ],
  photo: File.open(Rails.root.join('lib/assets/loup.jpeg').to_s)
)

Product.create(
  name: "Initiation au ski de randonnée",
  price: 990,
  duration: 5,
  length: 37,
  difficulty: 'difficile',
  departure_place: 'Genoble',
  period: 'Hiver',
  description: [
    "Partez vivre 5 jours d'initiation au ski de randonnée dans les Écrins, et gravissez votre premier 3000 m ! En prime : un gîte confort et des repas locaux."
  ],
  photo: File.open(Rails.root.join('lib/assets/ski.jpeg').to_s)
)

Product.create(
  name: "Stage trail en Auvergne",
  price: 370,
  duration: 3,
  length: 37,
  difficulty: 'modéré',
  departure_place: 'Clermont Ferrand',
  period: 'Printemps - Ete - Automne',
  description: [
    "Vivez un stage de trail hors du commun en Auvergne avec Dawa Sherpa : icône mondiale de l'ultra trail, il sera là pour vous coacher pendant 3 jours !"
  ],
  photo: File.open(Rails.root.join('lib/assets/trail.jpeg').to_s)
)

p "Seeds are done !"
