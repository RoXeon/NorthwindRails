class Shipper < ActiveRecord::Base
  self.primary_key = "ShipperID"

  # Not null
  validates :ShipperID, presence: true
  validates :CompanyName, presence: true
end
