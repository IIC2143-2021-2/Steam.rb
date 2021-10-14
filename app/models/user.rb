class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :games
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :games, dependent: :destroy
  has_many :characters, dependent: :destroy
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true

  def print_charas
  	puts "Soy el usuario: #{username}, y tengo los siguientes personajes:"
  	characters.each do |ch|
  		puts ch.name
  	end
  	nil
  end
end
