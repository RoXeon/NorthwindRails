class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.integer :OrderID
      t.integer :ProductID
      t.float :UnitPrice
      t.integer :Quantity
      t.float :Discount

      t.timestamps
    end
  end
end
