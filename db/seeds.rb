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
    phone_number: '123456789',
    category:     'italian'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '849499382',
    category:     'chinese'
  },

  {
    name:         'Pizza West',
    address:      'Ain Diab',
    phone_number: '3245',
    category:     'japanese'
  },
  {
    name:         'Pizza North',
    address:      'Maarif',
    phone_number: '0987654321',
    category:     'french'
  },
  {
    name:         'Pizza South',
    address:      'El Oulfa',
    phone_number: '1983',
    category:     'belgian'
  }

]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'



