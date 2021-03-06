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

ActiveRecord::Schema.define(version: 20181218130545) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assessments", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "test_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faqs", force: :cascade do |t|
    t.text     "question"
    t.text     "response"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: :cascade do |t|
    t.text     "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "archive"
    t.boolean  "export"
    t.boolean  "demo"
  end

  create_table "items", force: :cascade do |t|
    t.integer  "test_id"
    t.text     "shorthand"
    t.text     "itemtext"
    t.integer  "difficulty"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "mediapath"
    t.text     "itemview"
    t.integer  "itemtype"
  end

  create_table "materials", force: :cascade do |t|
    t.text     "subject"
    t.text     "construct"
    t.text     "block"
    t.text     "exercisetype"
    t.text     "blockinfo"
    t.text     "exerciseinfo"
    t.text     "data"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "materials_tests", id: false, force: :cascade do |t|
    t.integer "material_id"
    t.integer "test_id"
  end

  create_table "measurements", force: :cascade do |t|
    t.integer  "assessment_id"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", force: :cascade do |t|
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "measurement_id"
    t.text     "items"
    t.text     "responses"
    t.float    "total"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "extra_data"
  end

  create_table "students", force: :cascade do |t|
    t.text     "name"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "birthdate"
    t.boolean  "gender"
    t.integer  "specific_needs"
    t.boolean  "migration"
    t.text     "login"
  end

  create_table "tests", force: :cascade do |t|
    t.text     "name"
    t.text     "info"
    t.integer  "len"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "type"
    t.integer  "time"
    t.text     "short_info"
    t.text     "subject"
    t.text     "construct"
    t.text     "level"
    t.text     "answers"
    t.boolean  "student_access"
    t.boolean  "archive"
    t.text     "type_info"
    t.string   "shorthand"
    t.text     "generic_views"
  end

  create_table "users", force: :cascade do |t|
    t.text     "email"
    t.text     "password_digest"
    t.text     "name"
    t.text     "school"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "capabilities"
    t.datetime "tcaccept"
    t.datetime "last_login"
    t.integer  "account_type"
    t.integer  "state"
    t.integer  "occupation"
  end

end
