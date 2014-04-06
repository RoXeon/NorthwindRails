class Product < ActiveRecord::Base
  validates :ProductID, presence: true
  validates :ProductName, presence: true
end
