require 'rails_helper'

RSpec.describe GameProcessor, type: :service do
  let(:player_1) { FactoryGirl.create(:player) }
  let(:player_2) { FactoryGirl.create(:player) }
  let(:game) do 
    FactoryGirl.create(:game,
      player_1: player_1,
      player_2: player_2,
      winner: 'player_2')
  end

  describe 'updates elo scores' do
    before do 
      GameProcessor.new(game)
    end

    it 'updates the losing player rating' do
      expect(player_1.rating).to eq 987
    end

    it 'updates the winning player rating' do
      expect(player_2.rating).to eq 1012
    end
  end
end
