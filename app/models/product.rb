class Product < ActiveRecord::Base
  # Not null
  validates :ProductName, presence: true

  belongs_to :supplier, inverse_of: :product
  belongs_to :category, inverse_of: :product
  has_many :order_details, dependent: :delete_all, inverse_of: :product
end
