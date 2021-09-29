require "rails_helper"

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  RSpec.describe "Games", type: :request do 
    before(:each) do
      @attr_user = {
        username: "Example User",
        phone: "123456789",
        email: "user@example.com",
        password: "password",
        password_confirmation: "password"
      }
      @attr_valid = {
        name: "Nombre",
        rating: 1,
        description: "Descripción",
        price: 1,
        category: "Categoria", 
      }
      @attr_invalid = {
        name: "Nombre",
        rating: "buenardo",
        description: "Descripción",
        price: 1,
        category: "Categoria", 
      }
    end

    describe "index" do 
      it "should return a successful request" do 
          get "/games/index"
          expect(response).to have_http_status(:ok)
      end
    end

    describe "new" do 
      it "should return a successful request" do 
          get "/games/new"
          expect(response).to have_http_status(:ok)
      end
    end

    describe "create" do
      it "should redirect after create a publication" do
        expect do
          user = User.create!(@attr_user)
          sign_in user
          post "/games", params: { game: @attr_valid }
        end.to change(Game, :count).by(1)        
          # expect(response).to have_http_status(302)  #####podria ser mejor, como ver que aumentade la cuenta de juegos
      end

      it "should redirect after create a publication" do
        expect do
          user = User.create!(@attr_user)
          sign_in user
          post "/games", params: { game: @attr_invalid }
        end.to change(Game, :count).by(0)
      end 
    end
  end
end
