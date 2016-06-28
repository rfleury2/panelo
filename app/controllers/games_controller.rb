class GamesController < ApplicationController
  def new
    @game = Game.new
    @game.draft_players
  end
end