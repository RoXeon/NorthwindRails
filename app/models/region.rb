class Region < ActiveRecord::Base
  validates :RegionID, presence: true
  validates :RegionDescription, presence: true
end
