class EmployeeTerritory < ActiveRecord::Base
  validates :EmployeeID, presence: true
  validates :TerritoryID, presence: true
end
