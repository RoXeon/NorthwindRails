class Product < ActiveRecord::Base
  # Not null
  validates :ProductName, presence: true
end
