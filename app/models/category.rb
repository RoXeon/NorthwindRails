class Category < ActiveRecord::Base
  # Not null
  validates :CategoryName, presence: true

  has_many :product
end
