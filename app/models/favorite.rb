class Favorite < ActiveRecord::Base
  validates :user_id, :presence => true
  validates :slope_id, :presence => true

  belongs_to :user
  belongs_to :slope
end
