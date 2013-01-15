class Game < ActiveRecord::Base
  attr_accessible :description, :giantbomb_id, :platform, :thumbnail_url, :title

  has_many :line_items
  has_many :lockers, through: :line_items
end
