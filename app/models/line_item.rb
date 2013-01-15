class LineItem < ActiveRecord::Base
  attr_accessible :game_id, :locker_id
  belongs_to :game
  belongs_to :locker
end
