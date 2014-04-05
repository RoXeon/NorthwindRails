# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140405230220) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.integer  "CategoryID"
    t.string   "CategoryName"
    t.text     "Description"
    t.binary   "Picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customercustomerdemos", force: true do |t|
    t.string   "CustomerID"
    t.string   "CustomerTypeID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customerdemographics", force: true do |t|
    t.string   "CustomerTypeID"
    t.text     "CustomerDesc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "CustomerID"
    t.string   "CompanyName"
    t.string   "ContactName"
    t.string   "ContactTitle"
    t.string   "Address"
    t.string   "City"
    t.string   "Region"
    t.string   "PostalCode"
    t.string   "Country"
    t.string   "Phone"
    t.string   "Fax"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.integer  "EmployeeID"
    t.string   "LastName"
    t.string   "FirstName"
    t.string   "Title"
    t.string   "TitleOfCourtesy"
    t.date     "BirthDate"
    t.date     "HireDate"
    t.string   "Address"
    t.string   "City"
    t.string   "Region"
    t.string   "PostalCode"
    t.string   "Country"
    t.string   "HomePhone"
    t.string   "Extension"
    t.binary   "Photo"
    t.text     "Notes"
    t.integer  "ReportsTo"
    t.string   "PhotoPath"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employeeterritories", force: true do |t|
    t.integer  "EmployeeID"
    t.string   "TerritoryID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_details", force: true do |t|
    t.integer  "OrderID"
    t.integer  "ProductID"
    t.float    "UnitPrice"
    t.integer  "Quantity"
    t.float    "Discount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "OrderID"
    t.string   "CustomerID"
    t.integer  "EmployeeID"
    t.date     "OrderDate"
    t.date     "RequiredDate"
    t.date     "ShippedDate"
    t.integer  "ShipVia"
    t.float    "Freight"
    t.string   "ShipName"
    t.string   "ShipAddress"
    t.string   "ShipCity"
    t.string   "ShipRegion"
    t.string   "ShipPostalCode"
    t.string   "ShipCountry"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.integer  "ProductID"
    t.string   "ProductName"
    t.integer  "SupplierID"
    t.integer  "CategoryID"
    t.string   "QuantityPerUnit"
    t.float    "UnitPrice"
    t.integer  "UnitsInStock"
    t.integer  "UnitsOnOrder"
    t.integer  "ReorderLevel"
    t.integer  "Discontinued"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", force: true do |t|
    t.integer  "RegionID"
    t.string   "RegionDescription"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shippers", force: true do |t|
    t.integer  "ShipperID"
    t.string   "CompanyName"
    t.string   "Phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shippers_tmps", force: true do |t|
    t.integer  "ShipperID"
    t.string   "CompanyName"
    t.string   "Phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", force: true do |t|
    t.integer  "SupplierID"
    t.string   "CompanyName"
    t.string   "ContactName"
    t.string   "ContactTitle"
    t.string   "Address"
    t.string   "City"
    t.string   "Region"
    t.string   "PostalCode"
    t.string   "Country"
    t.string   "Phone"
    t.string   "Fax"
    t.text     "HomePage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "territories", force: true do |t|
    t.string   "TerritoryID"
    t.string   "TerritoryDescription"
    t.integer  "RegionID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usstates", force: true do |t|
    t.integer  "StateID"
    t.string   "StateName"
    t.string   "StateAbbr"
    t.string   "StateRegion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
