class GamesController < ApplicationController
  def create
    @game = Game.create
    @game.draft_players
  end

  def update
  end
end