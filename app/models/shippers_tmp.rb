class ShippersTmp < ActiveRecord::Base
  validates :ShipperID, presence: true
  validates :CompanyName, presence: true
end
