class Game < ApplicationRecord
    belongs_to :user
    validates :name, presence: true, length: {minimum: 5}
    validates :rating, presence:true, numericality: true
    validates :description, :price, :category, presence: true

end
