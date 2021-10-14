# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


20.times do
  password = Faker::Alphanumeric.alphanumeric(number: 10)
  user = User.create(
      username: Faker::Internet.username,
      email: Faker::Internet.email,
      phone: Faker::PhoneNumber.cell_phone_in_e164,
      age: Faker::Number.between(from: 15, to: 50),
      password: password,
      password_confirmation: password
    )
  3.times do
    game = user.games.create(
      name: Faker::Game.title,
      rating: Faker::Number.decimal(l_digits: 1, r_digits: 1),
      description: "No description",
      price: Faker::Number.between(from: 30, to: 80),
      category: Faker::Game.genre
      )
    2.times do
      game.games_characters.create(
     	  character: Character.create!(
          name: Faker::Name.name,
          attack: Faker::Number.between(from: 1, to: 100),
          defense: Faker::Number.between(from: 1, to: 100),
          speed: Faker::Number.between(from: 1, to: 100),
          user: user
        )
      )
    end
  end
end