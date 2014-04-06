class Order < ActiveRecord::Base
  validates :OrderID, presence: true
end
