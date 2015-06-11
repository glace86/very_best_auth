class Slope < ActiveRecord::Base
  validates :name, :presence => true

  has_many :favorites
end

