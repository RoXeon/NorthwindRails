class EmployeeTerritory < ActiveRecord::Base
  # Not null
  validates :employee_id, presence: true
  validates :territory_id, presence: true
end
