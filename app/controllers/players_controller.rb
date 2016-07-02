class PlayersController < ApplicationController
  def index
    @players = Player.by_rating
  end
end