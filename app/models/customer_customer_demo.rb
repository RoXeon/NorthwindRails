class CustomerCustomerDemo < ActiveRecord::Base
  # Not null
  validates :CustomerID, presence: true
  validates :CustomerTypeID, presence: true
end
