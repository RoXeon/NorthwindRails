class Employee < ActiveRecord::Base
  # Not null
  validates :EmployeeID, presence: true
  validates :LastName, presence: true
  validates :FirstName, presence: true
end
