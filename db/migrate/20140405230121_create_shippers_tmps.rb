class CreateShippersTmps < ActiveRecord::Migration
  def change
    create_table :shippers_tmps do |t|
      t.integer :ShipperID
      t.string :CompanyName
      t.string :Phone

      t.timestamps
    end
  end
end
