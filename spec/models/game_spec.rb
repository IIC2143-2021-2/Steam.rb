require 'rails_helper'

RSpec.describe Game, type: :model do
  let(:user) {create(:user)}
  let(:game) {create(:game)}

  it 'is valid with valid attributes' do
    expect(game).to be_valid
  end

  it 'is not valid without a name' do
    game.name = nil
    expect(game).not_to be_valid
  end

  it 'is not valid without a short name' do
    game.name = 'a'
    expect(game).not_to be_valid
  end

  it 'is not valid without rating' do
    game.rating = nil
    expect(game).not_to be_valid
  end

  it 'is not valid wit a string rating ' do
    game.rating = 'aaa'
    expect(game).not_to be_valid
  end

  it 'is not valid without description' do
    game.description = nil
    expect(game).not_to be_valid
  end

  it 'is not valid without price' do
    game.description = nil
    expect(game).not_to be_valid
  end

  it 'is not valid without category' do
    game.description = nil
    expect(game).not_to be_valid
  end

  it 'is not valid without user' do
    game.user_id = nil
    expect(game).not_to be_valid
  end

end
