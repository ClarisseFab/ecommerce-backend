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
User.destroy_all
Product.destroy_all
Order.destroy_all

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
  ]
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
  ]
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
  ]
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
  ]
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
  ]
)

p "Seeds are done !"

