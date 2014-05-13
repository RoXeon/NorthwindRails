class Order < ActiveRecord::Base

  has_many :order_details, dependent: :delete_all, inverse_of: :order
  belongs_to :customer
  belongs_to :employee
  belongs_to :shipper, foreign_key: "ShipVia", inverse_of: :orders
end
