class GamesController < ApplicationController
  before_filter :get_contest

  def new
    if signed_in?
      @game = current_user.games.create(contest: @contest)
    else
      @game = @contest.games.create
    end
    @game.draft_players
  end

  def update
    get_game
    assign_winner
    GameProcessor.new(@game)
    redirect_to new_contest_game_path(@contest)
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

  def get_contest
    @contest = Contest.find_by(id: params[:contest_id])
    raise ArgumentError unless @contest
  end
end