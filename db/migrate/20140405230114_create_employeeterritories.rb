class CreateEmployeeterritories < ActiveRecord::Migration
  def change
    create_table :employeeterritories do |t|
      t.integer :EmployeeID
      t.string :TerritoryID

      t.timestamps
    end
  end
end
