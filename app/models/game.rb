class Game < ApplicationRecord
    has_many :games_characters, dependent: :destroy
    has_many :characters, through: :games_characters
    belongs_to :user
end
