class CreateUsstates < ActiveRecord::Migration
  def change
    create_table :usstates do |t|
      t.integer :StateID
      t.string :StateName
      t.string :StateAbbr
      t.string :StateRegion

      t.timestamps
    end
  end
end
