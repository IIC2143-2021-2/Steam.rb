class Game < ApplicationRecord
    has_many :games_characters, dependent: :destroy
    has_many :characters, through: :games_characters
    validates :name, presence: true, length: {minimum: 5}
    validates :rating, presence:true, numericality: true
    validates :description, :price, :category, presence: true
end
