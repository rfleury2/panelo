require 'rails_helper'

RSpec.describe Player, type: :model do
  it { should have_many(:player_1_games).with_foreign_key(:player_1_id) }
  it { should have_many(:player_2_games).with_foreign_key(:player_2_id) }
  it { should belong_to :contest }

  it { should validate_presence_of :name }
  it { should validate_presence_of :rating }

  it { should validate_numericality_of :rating }

  it 'default rating is 1000' do
    player = Player.new
    expect(player.rating).to eq 1000
  end

  context 'to_elo' do
    # TODO: Spec
  end

  context 'games' do
    # TODO: Spec
  end

  context '#image_suffix' do
    let(:contest) { FactoryGirl.create(:contest) }
    let(:player) { FactoryGirl.build(:player, name: 'CrAzY Pe..rsOn', contest: contest) }

    it 'returns the proper image path' do
      expect(player.image_suffix).to eq "contests/#{contest.id}/crazy_person.jpg"
    end
  end
end