class Shipper < ActiveRecord::Base
  # Not null
  validates :CompanyName, presence: true
end
