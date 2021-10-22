class Character < ApplicationRecord
    has_many :games_characters, dependent: :destroy
    has_many :games, through: :games_characters
    belongs_to :user
end
