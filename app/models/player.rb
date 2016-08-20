class Player < ActiveRecord::Base
  has_many :player_1_games, class_name: "Player", foreign_key: :player_1_id
  has_many :player_2_games, class_name: "Player", foreign_key: :player_2_id
  belongs_to :contest

  validates_presence_of :name
  validates_presence_of :rating

  validates_numericality_of :rating

  scope :by_rating, -> { order(rating: :desc) }

  def to_elo
    Elo::Player.new(rating: rating)
  end

  def image_suffix
    "contests/#{contest.id}/#{name.downcase.gsub(" ", "_").gsub(".", "")}.jpg"
  end
end