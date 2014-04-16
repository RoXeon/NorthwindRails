class Employee < ActiveRecord::Base
  self.primary_key = "EmployeeID"

  # Not null
  validates :EmployeeID, presence: true
  validates :LastName, presence: true
  validates :FirstName, presence: true
end
