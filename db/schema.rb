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

ActiveRecord::Schema.define(version: 20160208233513) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "file_stores", force: :cascade do |t|
    t.string   "description"
    t.date     "date_loaded"
    t.date     "date_exercised"
    t.string   "attachment"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.boolean  "processed"
    t.integer  "user_id"
    t.date     "upload_date"
  end

  create_table "spin_entries", force: :cascade do |t|
    t.decimal  "distance"
    t.decimal  "speed"
    t.decimal  "power"
    t.integer  "hrate"
    t.integer  "rpm"
    t.date     "spin_date"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "show"
    t.string   "time_recorded"
    t.integer  "seconds_elapsed"
  end

  create_table "spin_headers", force: :cascade do |t|
    t.string   "SpinHeader"
    t.integer  "file_store_id"
    t.string   "notes"
    t.string   "stage"
    t.time     "time_recorded"
    t.decimal  "distance_recorded"
    t.decimal  "avg_speed_recorded"
    t.integer  "avg_watts_recorded"
    t.integer  "avg_hr_recorded"
    t.integer  "avg_rpm_recorded"
    t.decimal  "max_speed_recorded"
    t.integer  "max_watts_recorded"
    t.integer  "max_hr_recorded"
    t.integer  "max_rpm_recorded"
    t.integer  "kcal_recorded"
    t.integer  "kj_recorded"
    t.decimal  "distance_calc"
    t.decimal  "avg_speed_calc"
    t.integer  "avg_watts_calc"
    t.integer  "avg_hr_calc"
    t.integer  "avg_rpm_calc"
    t.decimal  "max_speed_calc"
    t.integer  "max_watts_calc"
    t.integer  "max_hr_calc"
    t.integer  "max_rpm_calc"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
