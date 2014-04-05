class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :ProductID
      t.string :ProductName
      t.integer :SupplierID
      t.integer :CategoryID
      t.string :QuantityPerUnit
      t.float :UnitPrice
      t.integer :UnitsInStock
      t.integer :UnitsOnOrder
      t.integer :ReorderLevel
      t.integer :Discontinued

      t.timestamps
    end
  end
end
