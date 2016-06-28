class Player < ActiveRecord::Base
  has_many :player_1_games, class_name: "Player", foreign_key: :player_1_id
  has_many :player_2_games, class_name: "Player", foreign_key: :player_2_id

  validates_presence_of :name
  validates_presence_of :rating

  validates_numericality_of :rating

  def to_elo
    Elo::Player.new(rating: rating)
  end

  def games
    # TODO: Implement a sum of player_1_games and player_2_games
  end
end