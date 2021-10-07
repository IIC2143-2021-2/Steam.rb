# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



require 'faker'

@user= User.create(username: "Peje", email: "peje@uc.cl", phone: "18231414", age: 20, password: '123456', password_confirmation: '123456')
@character1= Character.create(name: "harry", attack: Faker::Number.between(from: 1, to: 100), defense: Faker::Number.between(from: 1, to: 100), speed: Faker::Number.between(from: 1, to: 100), user: @user)
@character2= Character.create(name: "ron", attack: Faker::Number.between(from: 1, to: 100), defense: Faker::Number.between(from: 1, to: 100), speed: Faker::Number.between(from: 1, to: 100), user: @user)
@character3= Character.create(name: "hermione", attack: Faker::Number.between(from: 1, to: 100), defense: Faker::Number.between(from: 1, to: 100), speed: Faker::Number.between(from: 1, to: 100), user: @user)

@game =Game.create(name: "quidditch", rating: Faker::Number.decimal(l_digits: 1, r_digits: 1), description: "empty", price: Faker::Number.between(from: 30, to: 80) , category: "", user: @user)

GamesCharacter.create(game: @game, character: @character1)
GamesCharacter.create(game: @game, character: @character2)
GamesCharacter.create(game: @game, character: @character3)