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

ActiveRecord::Schema.define(version: 20151201135909) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pictures", force: :cascade do |t|
    t.integer  "update_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "pictures", ["update_id"], name: "index_pictures_on_update_id", using: :btree

  create_table "specials", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title",              null: false
    t.string   "description"
    t.string   "days_applicable"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "specials", ["user_id"], name: "index_specials_on_user_id", using: :btree

  create_table "surfspots", force: :cascade do |t|
    t.string   "name",                                         null: false
    t.string   "country"
    t.string   "area"
    t.string   "description"
    t.decimal  "longitude",           precision: 10, scale: 6
    t.decimal  "latitude",            precision: 10, scale: 6
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "breaktype"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "updates", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "surfspot_id"
    t.datetime "pictures_taken_at"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "wave_height"
    t.string   "wind"
    t.string   "crowds"
    t.string   "rating"
    t.string   "comment"
    t.string   "choose_special"
  end

  add_index "updates", ["surfspot_id"], name: "index_updates_on_surfspot_id", using: :btree
  add_index "updates", ["user_id"], name: "index_updates_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                                                 default: "",    null: false
    t.string   "encrypted_password",                                    default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                                         default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean  "admin",                                                 default: false
    t.string   "username"
    t.string   "business_name"
    t.string   "address"
    t.string   "city"
    t.string   "zip_code"
    t.string   "business_description"
    t.string   "business_type"
    t.string   "website_link"
    t.decimal  "longitude",                    precision: 10, scale: 6
    t.decimal  "latitude",                     precision: 10, scale: 6
    t.string   "business_avatar_file_name"
    t.string   "business_avatar_content_type"
    t.integer  "business_avatar_file_size"
    t.datetime "business_avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
