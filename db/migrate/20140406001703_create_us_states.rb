class CreateUsStates < ActiveRecord::Migration
  def change
    create_table :us_states do |t|
      t.integer :StateID
      t.string :StateName
      t.string :StateAbbr
      t.string :StateRegion

      t.timestamps
    end
  end
end
