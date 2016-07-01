require 'rails_helper'

RSpec.describe GamesController, type: :controller do
  before do
    FactoryGirl.create(:player)
    FactoryGirl.create(:player)
  end

  describe 'GET #new' do
    before do
      get :new
    end

    it { should respond_with 200 }
    it { should render_template :new }
  end

  describe 'PUT #update' do
    let(:player_2) { FactoryGirl.create(:player) }
    let!(:game) { FactoryGirl.create(:game, player_2: player_2) }

    describe 'valid' do
      before do
        put :update, { id: game.id, winner_id: player_2.id }
      end

      it { should redirect_to :new_game }
    end
  end
end
