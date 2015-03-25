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

ActiveRecord::Schema.define(version: 20150325151406) do

  create_table "git_sitter_selections", force: :cascade do |t|
    t.integer  "git_sitter_id"
    t.integer  "sitter_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "git_sitters", force: :cascade do |t|
    t.datetime "when"
    t.string   "how_long"
    t.text     "message"
    t.integer  "user_id"
    t.integer  "sitter_selection_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "git_sitters", ["sitter_selection_id"], name: "index_git_sitters_on_sitter_selection_id"
  add_index "git_sitters", ["user_id"], name: "index_git_sitters_on_user_id"

  create_table "list_items", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "sitter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "list_items", ["sitter_id"], name: "index_list_items_on_sitter_id"
  add_index "list_items", ["user_id"], name: "index_list_items_on_user_id"

  create_table "sitter_selections", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "sitter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sitter_selections", ["sitter_id"], name: "index_sitter_selections_on_sitter_id"
  add_index "sitter_selections", ["user_id"], name: "index_sitter_selections_on_user_id"

  create_table "sitters", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sitters", ["user_id"], name: "index_sitters_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
