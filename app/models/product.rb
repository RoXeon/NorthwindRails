class Product < ActiveRecord::Base
  self.primary_key = "ProductID"

  # Not null
  validates :ProductID, presence: true
  validates :ProductName, presence: true
end
