class Territory < ActiveRecord::Base
  # Not null
  validates :TerritoryID, presence: true
  validates :TerritoryDescription, presence: true
  validates :RegionID, presence: true
end
