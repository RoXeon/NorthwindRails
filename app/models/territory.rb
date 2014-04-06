class Territory < ActiveRecord::Base
  # Not null
  validates :TerritoryID, presence: true, uniqueness: true
  validates :TerritoryDescription, presence: true
  validates :RegionID, presence: true


  belongs_to :region, class_name: "Region", foreign_key: "RegionID", inverse_of: :territories
  validates :region, presence: true
end
