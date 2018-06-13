# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  0613445377,
    category:      'belgian',
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  0732451200,
    category:      'italian',
  },
  {
    name:         'Maison de Kyoto',
    address:      '72 avenue Georges Clemenceau, Le Vesinet',
    phone_number:  0732331410,
    category:      'japanese',
  },
  {
    name:         'Jorjah',
    address:      '27 rue Marie Stuart, St Germain',
    phone_number:  0712751220,
    category:      'chinese',
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
