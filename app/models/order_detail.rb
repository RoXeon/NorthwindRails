class OrderDetail < ActiveRecord::Base
  # Not null
  validates :order_id, presence: true
  validates :product_id, presence: true
  validates :UnitPrice, presence: true
  validates :Quantity, presence: true
  validates :Discount, presence: true
end
