class Game < ActiveRecord::Base
  validates :bggID, presence: true
  validates :bggID, uniqueness: true
end
