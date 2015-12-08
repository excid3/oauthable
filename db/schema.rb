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

ActiveRecord::Schema.define(version: 20151017234832) do

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "projects", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "environment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "slug"
  end

  add_index "projects", ["slug"], name: "index_projects_on_slug", unique: true

  create_table "providers", force: :cascade do |t|
    t.string   "name"
    t.string   "omniauth_name"
    t.string   "gem_name"
    t.string   "github"
    t.text     "instructions"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "domain"
    t.string   "register_url"
    t.string   "slug"
  end

  add_index "providers", ["slug"], name: "index_providers_on_slug", unique: true

  create_table "services", force: :cascade do |t|
    t.integer  "provider_id", null: false
    t.string   "api_key"
    t.string   "api_secret"
    t.string   "scope"
    t.text     "auth"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "options"
    t.integer  "project_id"
  end

  create_table "tokens", force: :cascade do |t|
    t.integer  "service_id", null: false
    t.string   "scope"
    t.text     "auth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
