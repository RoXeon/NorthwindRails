class Supplier < ActiveRecord::Base
  self.primary_key = "SupplierID"

  # Not null
  validates :SupplierID, presence: true
  validates :CompanyName, presence: true
end
