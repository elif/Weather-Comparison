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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111117231138) do

  create_table "comparisons", :force => true do |t|
    t.string   "location_1"
    t.string   "location_2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_points", :force => true do |t|
    t.integer  "temperature_1"
    t.integer  "temperature_2"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comparison_id"
    t.string   "conditions_1"
    t.string   "conditions_2"
  end

end
