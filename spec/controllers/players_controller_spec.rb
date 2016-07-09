require 'rails_helper'

RSpec.describe PlayersController, type: :controller do
  let(:contest) { FactoryGirl.build(:contest) }
  let!(:middle) { FactoryGirl.create(:player, rating: 800, contest: contest) }
  let!(:top) { FactoryGirl.create(:player, rating: 1400, contest: contest) }
  let!(:bottom) { FactoryGirl.create(:player, rating: 600, contest: contest) }

  describe "#new" do 
    before do
      get :index, { contest_id: contest.id }
    end

    it { should render_template :index }

    it "assigns @players" do
      expect(assigns(:players).length).to eq 3
      expect(assigns(:players).first).to eq top
      expect(assigns(:players).last).to eq bottom
    end
  end
end
