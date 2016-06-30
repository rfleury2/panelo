class GamesController < ApplicationController
  def new
    @game = Game.create
    @game.draft_players
  end

  def update
    get_game
    assign_winner
    GameProcessor.new(@game)
    redirect_to new_game_path
  end

  private 

  def get_game
    @game = Game.find_by(id: params[:id])
    raise ArgumentError unless @game
  end

  def assign_winner
    get_winner
    if @winner == @game.player_1
      @game.update_attributes(winner: 'player_1')
    elsif @winner == @game.player_2
      @game.update_attributes(winner: 'player_2')
    else
      raise ArgumentError, "Winner does not match game participant"
    end
  end

  def get_winner
    @winner = Player.find_by(id: params[:winner_id])
    raise ArgumentError unless @winner
  end
end