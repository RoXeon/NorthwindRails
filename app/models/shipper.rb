class Shipper < ActiveRecord::Base
  # Not null
  validates :CompanyName, presence: true

  has_many :orders, inverse_of: :shipper
end
