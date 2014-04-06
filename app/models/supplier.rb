class Supplier < ActiveRecord::Base
  # Not null
  validates :SupplierID, presence: true
  validates :CompanyName, presence: true
end
