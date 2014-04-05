class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :CategoryID
      t.string :CategoryName
      t.text :Description
      t.binary :Picture

      t.timestamps
    end
  end
end
