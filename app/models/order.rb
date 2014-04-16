class Order < ActiveRecord::Base
  self.primary_key = "OrderID"

  # Not null
  validates :OrderID, presence: true
end
