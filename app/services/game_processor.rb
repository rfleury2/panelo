class GameProcessor
  attr_reader :elo_player_1, :elo_player_2

  def initialize(game)
    @game = game
    calculate_elo_rating_impact
  end

  def calculate_elo_rating_impact
    get_elo_players
    if @game.winner == 'player_1'
      elo_player_1.wins_from(elo_player_2)
    elsif @game.winner == 'player_2'
      elo_player_2.wins_from(elo_player_1)
    else
      raise ArgumentError, "Game does not have a winner"
    end
    update_players
  end

  def get_elo_players
    @elo_player_1 = Elo::Player.new(rating: @game.player_1.rating)
    @elo_player_2 = Elo::Player.new(rating: @game.player_2.rating)
  end

  def update_players
    @game.player_1.update_attributes(rating: elo_player_1.rating)
    @game.player_2.update_attributes(rating: elo_player_2.rating)
  end
end