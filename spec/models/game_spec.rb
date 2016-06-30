require 'rails_helper'

RSpec.describe Game, type: :model do
  it { should belong_to(:player_1).class_name("Player") }
  it { should belong_to(:player_2).class_name("Player") }
  it { should belong_to(:user) }

  context 'players' do
    let(:player_1) { FactoryGirl.build(:player) }
    let(:player_2) { FactoryGirl.build(:player) }
    let!(:game) { FactoryGirl.build(:game, player_1: player_1, player_2: player_2) }

    it 'assigns the right players' do
      expect(game.players).to eq [player_1, player_2]
    end
  end
end
