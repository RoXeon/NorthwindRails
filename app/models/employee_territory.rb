class EmployeeTerritory < ActiveRecord::Base
  # Not null
  validates :EmployeeID, presence: true
  validates :TerritoryID, presence: true
end
