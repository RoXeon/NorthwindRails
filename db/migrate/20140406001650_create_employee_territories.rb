class CreateEmployeeTerritories < ActiveRecord::Migration
  def change
    create_table :employee_territories do |t|
      t.integer :EmployeeID
      t.string :TerritoryID

      t.timestamps
    end
  end
end
