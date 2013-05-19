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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130519080446) do

  create_table "bike_types", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "bike_types", ["name"], :name => "index_bike_types_on_name", :unique => true

  create_table "bikes", :force => true do |t|
    t.integer  "owner_id",     :null => false
    t.integer  "bike_type_id", :null => false
    t.string   "color",        :null => false
    t.string   "brand",        :null => false
    t.string   "model",        :null => false
    t.string   "serial",       :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "bikes", ["bike_type_id"], :name => "index_bikes_on_bike_type_id"
  add_index "bikes", ["owner_id"], :name => "index_bikes_on_owner_id"

  create_table "feedbacks", :force => true do |t|
    t.text     "feedback",   :null => false
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "memberships", :force => true do |t|
    t.integer  "person_id",     :null => false
    t.date     "start_date",    :null => false
    t.date     "end_date",      :null => false
    t.string   "mail_address"
    t.string   "email_address"
    t.string   "phone_number"
    t.integer  "donation"
    t.text     "notes"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "memberships", ["person_id"], :name => "index_memberships_on_person_id", :unique => true

  create_table "occupants", :force => true do |t|
    t.integer  "person_id",  :null => false
    t.string   "purpose",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "occupants", ["person_id"], :name => "index_occupants_on_person_id", :unique => true

  create_table "people", :force => true do |t|
    t.string   "first_name",  :null => false
    t.string   "last_name"
    t.integer  "bikes_count"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "people", ["first_name", "last_name"], :name => "index_people_on_first_name_and_last_name", :unique => true
  add_index "people", ["first_name"], :name => "index_people_on_first_name"
  add_index "people", ["last_name"], :name => "index_people_on_last_name"

  create_table "visits", :force => true do |t|
    t.integer  "person_id",  :null => false
    t.datetime "started",    :null => false
    t.string   "purpose",    :null => false
    t.datetime "ended"
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "visits", ["person_id"], :name => "index_visits_on_person_id"
  add_index "visits", ["purpose"], :name => "index_visits_on_purpose"

end
