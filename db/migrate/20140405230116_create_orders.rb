class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :OrderID
      t.string :CustomerID
      t.integer :EmployeeID
      t.date :OrderDate
      t.date :RequiredDate
      t.date :ShippedDate
      t.integer :ShipVia
      t.float :Freight
      t.string :ShipName
      t.string :ShipAddress
      t.string :ShipCity
      t.string :ShipRegion
      t.string :ShipPostalCode
      t.string :ShipCountry

      t.timestamps
    end
  end
end
