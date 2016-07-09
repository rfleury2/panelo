class Game < ActiveRecord::Base
  belongs_to :player_1, class_name: "Player"
  belongs_to :player_2, class_name: "Player"
  belongs_to :user
  belongs_to :contest

  def players
    [player_1, player_2]
  end

  def draft_players
    until player_1 != player_2 do
      self.player_1 = contest.players.sample
      self.player_2 = contest.players.sample
    end
    self.save
  end
end
