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

ActiveRecord::Schema.define(version: 20161021062157) do

  create_table "myjourneys", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "journey_name"
    t.string   "imei_no"
    t.string   "start_latitude"
    t.string   "start_longitude"
    t.string   "remarks"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "ovrspds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "trip_id"
    t.string   "over_speed"
    t.string   "ovrspd_latitude"
    t.string   "ovrspd_longitude"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["trip_id"], name: "index_ovrspds_on_trip_id", using: :btree
  end

  create_table "trips", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "journey_name"
    t.text     "imei_no",         limit: 65535
    t.text     "start_latitude",  limit: 65535
    t.text     "start_longitude", limit: 65535
    t.text     "stop_latitude",   limit: 65535
    t.text     "stop_longitude",  limit: 65535
    t.text     "avg_spd",         limit: 65535
    t.string   "remarks"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ovrspds", "trips"
end
