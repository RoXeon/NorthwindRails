class CreateCustomerDemographics < ActiveRecord::Migration
  def change
    create_table :customer_demographics do |t|
      t.string :CustomerTypeID
      t.text :CustomerDesc

      t.timestamps
    end
  end
end
