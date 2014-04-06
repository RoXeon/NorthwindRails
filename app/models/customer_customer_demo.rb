class CustomerCustomerDemo < ActiveRecord::Base
  validates :CustomerID, presence: true
  validates :CustomerTypeID, presence: true
end
