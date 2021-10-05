require 'rails_helper'

RSpec.describe User, type: :model do
    let(:user) {create(:user)}
    let(:user2) {create(:user)}

    it 'is valid with valid attributes' do
        expect(user).to be_valid
    end

    it 'is not valid without email ' do
        user.email = nil
        expect(user).not_to be_valid
    end


    it 'is not valid without username ' do
        user.username = nil
        expect(user).not_to be_valid
    end

    it 'is not valid with repeat username ' do
        user.username = user2.username
        expect(user).not_to be_valid
    end

    it 'is not valid with repeat email ' do
        user.email = user2.email
        expect(user).not_to be_valid
    end
end