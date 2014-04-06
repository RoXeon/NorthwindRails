class Product < ActiveRecord::Base
  # Not null
  validates :ProductID, presence: true
  validates :ProductName, presence: true
end
