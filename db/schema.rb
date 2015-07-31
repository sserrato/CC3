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

ActiveRecord::Schema.define(version: 20150730225326) do

  create_table "jobs", force: :cascade do |t|
    t.datetime "job_start"
    t.datetime "job_end"
    t.string   "loc_street"
    t.string   "loc_city"
    t.integer  "loc_zip"
    t.string   "loc_state"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "location_street"
    t.string   "location_city"
    t.integer  "location_zip"
    t.string   "state"
  end

  create_table "jobs_skills", id: false, force: :cascade do |t|
    t.integer "job_id",   null: false
    t.integer "skill_id", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.boolean  "sk_block_mason", default: false
    t.boolean  "sk_brick_mason", default: false
    t.boolean  "sk_finisher",    default: false
    t.boolean  "sk_form_setter", default: false
    t.boolean  "sk_stone_mason", default: false
  end

  create_table "skills_users", id: false, force: :cascade do |t|
    t.integer "user_id",  null: false
    t.integer "skill_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.integer  "phone"
  end

end
