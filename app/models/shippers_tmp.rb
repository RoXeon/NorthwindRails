class ShippersTmp < ActiveRecord::Base
  # Not null
  validates :ShipperID, presence: true
  validates :CompanyName, presence: true
end
