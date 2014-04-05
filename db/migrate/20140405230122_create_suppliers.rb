class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.integer :SupplierID
      t.string :CompanyName
      t.string :ContactName
      t.string :ContactTitle
      t.string :Address
      t.string :City
      t.string :Region
      t.string :PostalCode
      t.string :Country
      t.string :Phone
      t.string :Fax
      t.text :HomePage

      t.timestamps
    end
  end
end
