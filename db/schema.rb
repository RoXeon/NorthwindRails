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

ActiveRecord::Schema.define(version: 20140406001703) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "CategoryName"
    t.text     "Description"
    t.binary   "Picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customer_customer_demos", force: true do |t|
    t.integer  "customer_id"
    t.string   "customer_demographic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customer_demographics", force: true do |t|
    t.text     "CustomerDesc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
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

  create_table "employee_territories", force: true do |t|
    t.integer  "employee_id"
    t.integer  "territory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
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

  create_table "order_details", force: true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.float    "UnitPrice"
    t.integer  "Quantity"
    t.float    "Discount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "customer_id"
    t.integer  "employee_id"
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
    t.string   "ProductName"
    t.integer  "supplier_id"
    t.integer  "category_id"
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
    t.string   "RegionDescription"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shippers", force: true do |t|
    t.string   "CompanyName"
    t.string   "Phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shippers_tmps", force: true do |t|
    t.integer  "shipper_id"
    t.string   "CompanyName"
    t.string   "Phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", force: true do |t|
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
    t.string   "TerritoryDescription"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "us_states", force: true do |t|
    t.string   "StateName"
    t.string   "StateAbbr"
    t.string   "StateRegion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
