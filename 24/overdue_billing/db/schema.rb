# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 2) do

  create_table "customers", :force => true do |t|
    t.string   "name",           :limit => 40
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", :force => true do |t|
    t.date     "due_on"
    t.decimal  "amount",      :precision => 8, :scale => 2
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
