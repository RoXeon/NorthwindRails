class CreateCustomerdemographics < ActiveRecord::Migration
  def change
    create_table :customerdemographics do |t|
      t.string :CustomerTypeID
      t.text :CustomerDesc

      t.timestamps
    end
  end
end
