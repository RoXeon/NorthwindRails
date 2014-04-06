class Supplier < ActiveRecord::Base
  validates :SupplierID, presence: true
  validates :CompanyName, presence: true
end
