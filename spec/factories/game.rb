require 'faker'
FactoryBot.define do
    factory :game do
      name { 'Any Title' }
      description {Faker::Lorem.sentence}
      rating { 10.002 }
      price { 201 }
      category { 'Adventure' }
      association :user, factory: :user
    end
end