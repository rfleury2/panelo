require 'rails_helper'

RSpec.describe GamesController, type: :controller do
  before do
    FactoryGirl.create(:player)
    FactoryGirl.create(:player)
  end

  describe 'GET #new' do
    describe 'with no user logged in' do
      before do
        allow(controller).to receive(:signed_in?).and_return(nil)
        get :new
      end

      it { should respond_with 200 }
      it { should render_template :new }

      it 'does not assign user to game' do
        expect(assigns(:game).user).to be_nil
      end
    end

    describe 'with no user logged in' do
      let(:user) { FactoryGirl.create(:user) }

      before do
        expect(controller).to receive(:signed_in?).and_return(true)
        expect(controller).to receive(:current_user).and_return(user)
        get :new
      end

      it { should respond_with 200 }
      it { should render_template :new }

      it 'assigns user to game' do
        expect(assigns(:game).user).to eq user
      end
    end
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

    describe 'invalid game id' do
      let(:request) { put :update, { id: 100000, winner_id: player_2.id } }

      it 'should raise error' do
        expect{request}.to raise_error ArgumentError
      end
    end

    describe 'invalid winner_id' do
      let(:request) { put :update, { id: game.id, winner_id: 100000 } }

      it 'should raise error' do
        expect{request}.to raise_error ArgumentError
      end
    end
  end
end
