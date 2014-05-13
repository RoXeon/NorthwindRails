class Employee < ActiveRecord::Base
  # Not null
  validates :LastName, presence: true
  validates :FirstName, presence: true
end
