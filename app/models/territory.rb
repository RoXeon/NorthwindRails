class Territory < ActiveRecord::Base
  validates :TerritoryID, presence: true
  validates :TerritoryDescription, presence: true
  validates :RegionID, presence: true
end
