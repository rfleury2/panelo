class Game < ActiveRecord::Base
  belongs_to :player_1, class_name: "Player"
  belongs_to :player_2, class_name: "Player"

  def players
    [player_1, player_2]
  end

  def draft_players
    self.player_1 = Player.all.sample
    self.player_2 = Player.all.sample # test for match
    self.save
  end
end
