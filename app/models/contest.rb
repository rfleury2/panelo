class Contest < ActiveRecord::Base
  has_many :games
  has_many :players

  validates_presence_of :title
end
