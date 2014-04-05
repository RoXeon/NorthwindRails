class CreateCustomercustomerdemos < ActiveRecord::Migration
  def change
    create_table :customercustomerdemos do |t|
      t.string :CustomerID
      t.string :CustomerTypeID

      t.timestamps
    end
  end
end
