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

ActiveRecord::Schema.define(version: 20170520140622) do

  create_table "buses", force: :cascade do |t|
    t.string   "class"
    t.integer  "seats"
    t.string   "licence_number", limit: 6
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "ticket_statuses", force: :cascade do |t|
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "trip_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "ticket_status_id"
    t.index ["ticket_status_id"], name: "index_tickets_on_ticket_status_id"
    t.index ["trip_id"], name: "index_tickets_on_trip_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string   "departure"
    t.string   "destination"
    t.boolean  "is_express"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.decimal  "price"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "is_admin",               default: false
    t.string   "full_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
