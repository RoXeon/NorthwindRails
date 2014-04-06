class Customer < ActiveRecord::Base
  validates :CustomerID, presence: true
  validates :CompanyName, presence: true
end
