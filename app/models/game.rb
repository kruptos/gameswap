class Game < ActiveRecord::Base
  attr_accessible :description, :giantbomb_id, :platform, :thumbnail_url, :title
end
