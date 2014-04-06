class CreateCustomerCustomerDemos < ActiveRecord::Migration
  def change
    create_table :customer_customer_demos do |t|
      t.string :CustomerID
      t.string :CustomerTypeID

      t.timestamps
    end
  end
end
