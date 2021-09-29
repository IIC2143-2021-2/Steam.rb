class Game < ApplicationRecord
    validates :name, presence: true, length: {minimum: 5}
    validates :rating, presence:true, numericality: true
    validates :description, :price, :category, presence: true


end
