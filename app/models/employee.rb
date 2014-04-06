class Employee < ActiveRecord::Base
  validates :EmployeeID, presence: true
  validates :LastName, presence: true
  validates :FirstName, presence: true
end
