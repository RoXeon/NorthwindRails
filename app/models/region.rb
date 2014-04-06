class Region < ActiveRecord::Base
  # Not null
  validates :RegionID, presence: true
  validates :RegionDescription, presence: true
end
