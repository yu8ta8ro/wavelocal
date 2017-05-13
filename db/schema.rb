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

ActiveRecord::Schema.define(version: 20170506093641) do

  create_table "companies", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "avatar_file_name",       limit: 255
    t.string   "avatar_content_type",    limit: 255
    t.integer  "avatar_file_size",       limit: 4
    t.datetime "avatar_updated_at"
    t.string   "nickname",               limit: 255
    t.string   "lastname",               limit: 255
    t.string   "firstname",              limit: 255
    t.string   "address",                limit: 255
    t.text     "intro",                  limit: 65535
  end

  add_index "companies", ["confirmation_token"], name: "index_companies_on_confirmation_token", unique: true, using: :btree
  add_index "companies", ["email"], name: "index_companies_on_email", unique: true, using: :btree
  add_index "companies", ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true, using: :btree

  create_table "companyeets", force: :cascade do |t|
    t.text     "title",            limit: 65535
    t.integer  "company_id",       limit: 4
    t.date     "period"
    t.integer  "likes_count",      limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pic_file_name",    limit: 255
    t.string   "pic_content_type", limit: 255
    t.integer  "pic_file_size",    limit: 4
    t.datetime "pic_updated_at"
  end

  create_table "corporations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "info",       limit: 65535
    t.string   "url",        limit: 255
    t.string   "address",    limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "company_id",    limit: 4
    t.integer  "companyeet_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",       limit: 4
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "company",          limit: 255
    t.string   "job",              limit: 255
    t.string   "duration",         limit: 255
    t.string   "frequency",        limit: 255
    t.string   "payment",          limit: 255
    t.string   "flexibility",      limit: 255
    t.string   "sati_for_payment", limit: 255
    t.string   "potential",        limit: 255
    t.string   "growth",           limit: 255
    t.string   "contribution",     limit: 255
    t.string   "jobhunting",       limit: 255
    t.string   "nps",              limit: 255
    t.text     "detail",           limit: 65535
    t.text     "skill",            limit: 65535
    t.text     "edu_system",       limit: 65535
    t.text     "merits",           limit: 65535
    t.integer  "corporation_id",   limit: 4
    t.integer  "user_id",          limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "usereets", force: :cascade do |t|
    t.text     "title",            limit: 65535
    t.integer  "user_id",          limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pic_file_name",    limit: 255
    t.string   "pic_content_type", limit: 255
    t.integer  "pic_file_size",    limit: 4
    t.datetime "pic_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "avatar_file_name",       limit: 255
    t.string   "avatar_content_type",    limit: 255
    t.integer  "avatar_file_size",       limit: 4
    t.datetime "avatar_updated_at"
    t.string   "lastname",               limit: 255
    t.string   "firstname",              limit: 255
    t.string   "uni_name",               limit: 255
    t.integer  "grade",                  limit: 4
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
