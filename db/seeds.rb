# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  category = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  restaurant = Restaurant.new(name: Faker::Address.full_address, address: Faker::Lorem.paragraph(2), category: category.sample, phone_number:Faker::PhoneNumber.phone_number)
  restaurant.save
end
