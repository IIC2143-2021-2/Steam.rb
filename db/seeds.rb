# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



require 'faker'

Character.create(name: "harry", attack: Faker::Number.between(from: 1, to: 100), defense: Faker::Number.between(from: 1, to: 100), speed: Faker::Number.between(from: 1, to: 100))
Character.create(name: "ron", attack: Faker::Number.between(from: 1, to: 100), defense: Faker::Number.between(from: 1, to: 100), speed: Faker::Number.between(from: 1, to: 100))
Character.create(name: "hermione", attack: Faker::Number.between(from: 1, to: 100), defense: Faker::Number.between(from: 1, to: 100), speed: Faker::Number.between(from: 1, to: 100))


Game.create(name: "quidditch", raintg: Faker::Number.decimal(l_digits: 1, r_digits: 1) description: "", price: Faker::Number.between(from: 30, to: 80) , category: "")

