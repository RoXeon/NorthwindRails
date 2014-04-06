class Order < ActiveRecord::Base
  # Not null
  validates :OrderID, presence: true
end
