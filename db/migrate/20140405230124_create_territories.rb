class CreateTerritories < ActiveRecord::Migration
  def change
    create_table :territories do |t|
      t.string :TerritoryID
      t.string :TerritoryDescription
      t.integer :RegionID

      t.timestamps
    end
  end
end
