class OrderDetail < ActiveRecord::Base
  # Not null
  validates :UnitPrice, presence: true
  validates :Quantity, presence: true
  validates :Discount, presence: true

  belongs_to :order, inverse_of: :order_details
  belongs_to :product, inverse_of: :order_details
end
