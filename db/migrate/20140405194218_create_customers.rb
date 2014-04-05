class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :CompanyName
      t.string :ContactName
      t.string :ContactTitle

      t.timestamps
    end
  end
end
