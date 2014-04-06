class Customer < ActiveRecord::Base
  # Not null
  validates :CustomerID, presence: true
  validates :CompanyName, presence: true

  # Limit
  validates :CompanyName, length: { maximum: 40 }
  validates :ContactName, length: { maximum: 30 }
  validates :ContactTitle, length: { maximum: 30 }
  validates :Address, length: { maximum: 60 }
  validates :City, length: { maximum: 15 }
  validates :Region, length: { maximum: 15 }
  validates :PostalCode, length: { maximum: 10 }
  validates :Country, length: { maximum: 15 }
  validates :Phone, length: { maximum: 24 }
  validates :Fax, length: { maximum: 24 }
end
