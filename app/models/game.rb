class Game < ActiveRecord::Base
  belongs_to :player_1, class_name: "Player"
  belongs_to :player_2, class_name: "Player"
  belongs_to :user
  belongs_to :contest

  def players
    [player_1, player_2]
  end

  def draft_players
    players = contest.players
    until player_1 != player_2 do
      self.player_1 = players.sample
      self.player_2 = players.sample
    end
    self.save
  end
end
