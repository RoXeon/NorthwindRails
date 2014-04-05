class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :EmployeeID
      t.string :LastName
      t.string :FirstName
      t.string :Title
      t.string :TitleOfCourtesy
      t.date :BirthDate
      t.date :HireDate
      t.string :Address
      t.string :City
      t.string :Region
      t.string :PostalCode
      t.string :Country
      t.string :HomePhone
      t.string :Extension
      t.binary :Photo
      t.text :Notes
      t.integer :ReportsTo
      t.string :PhotoPath

      t.timestamps
    end
  end
end
