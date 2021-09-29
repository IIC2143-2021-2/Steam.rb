# frozen_string_literal: true

require 'rails_helper'
include GamesHelper

RSpec.describe 'Games', type: :request do

  describe 'Games helper methods' do

    it 'should return te correct value' do
      dolars = rand(100)
      euros = dolars * 0.86
      dolares_a_euros(dolars).should eq(euros)
    end

    it 'should return te correct value' do
        dolars = rand(100)
        pesos_chilenos = dolars * 811.6

        dolares_a_pesos_chilenos(dolars).should eq(pesos_chilenos)
    end
end

end
