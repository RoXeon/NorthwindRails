class ShippersTmp < ActiveRecord::Base
  # Not null
  validates :shipper_id, presence: true
  validates :CompanyName, presence: true
end
