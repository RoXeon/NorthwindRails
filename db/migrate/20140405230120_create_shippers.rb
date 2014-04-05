class CreateShippers < ActiveRecord::Migration
  def change
    create_table :shippers do |t|
      t.integer :ShipperID
      t.string :CompanyName
      t.string :Phone

      t.timestamps
    end
  end
end
