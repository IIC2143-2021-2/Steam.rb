require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  RSpec.describe "Games", type: :request do 
    describe "index" do 
        it "should return a successful request" do 
            get "/games/index"
            expect(response).to have_http_status(:ok)
        end

        it "should render index view" do 
            get "/users/index"
            expect(response).to render_template(:index)
        end
    end
  end
end
