class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.integer :RegionID
      t.string :RegionDescription

      t.timestamps
    end
  end
end
