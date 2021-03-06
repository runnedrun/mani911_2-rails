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

ActiveRecord::Schema.define(:version => 20110213210456) do

  create_table "callers", :force => true do |t|
    t.integer  "call_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "calls", :force => true do |t|
    t.string   "latitude"
    t.string   "longitude"
    t.string   "emergency_description"
    t.string   "comments"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.string   "type"
    t.string   "number"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "helpers", :force => true do |t|
    t.integer  "call_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instructions", :force => true do |t|
    t.integer  "pushed_id"
    t.string   "description"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
  end

  create_table "pusheds", :force => true do |t|
    t.integer  "caller_id"
    t.integer  "helper_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.integer  "caller_id"
    t.integer  "helper_id"
    t.string   "name"
    t.decimal  "age"
    t.string   "med_conditions"
    t.string   "residence"
    t.string   "number"
    t.string   "carrier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
