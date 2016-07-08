class PlayersController < ApplicationController
  def index
    @players = contest.players.by_rating
  end

  private

  def contest
    Contest.find_by(id: params[:contest_id])
  end
end