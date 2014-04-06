class OrderDetail < ActiveRecord::Base
  # Not null
  validates :OrderID, presence: true
  validates :ProductID, presence: true
  validates :UnitPrice, presence: true
  validates :Quantity, presence: true
  validates :Discount, presence: true
end
