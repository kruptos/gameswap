class Locker < ActiveRecord::Base
  attr_accessible :user_id

  belongs_to :user
  has_many :line_items, dependent: :destroy
  has_many :games, through: :line_items

end
