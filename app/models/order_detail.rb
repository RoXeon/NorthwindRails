class OrderDetail < ActiveRecord::Base
  validates :OrderID, presence: true
  validates :ProductID, presence: true
  validates :UnitPrice, presence: true
  validates :Quantity, presence: true
  validates :Discount, presence: true
end
