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

ActiveRecord::Schema.define(version: 20170425135922) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exams", force: :cascade do |t|
    t.string  "exam_name"
    t.string  "subject"
    t.integer "total_item"
    t.text    "content"
    t.text    "answer_keys", default: [], array: true
    t.text    "section_ids", default: [], array: true
    t.integer "status"
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.text   "user_ids",    default: [], array: true
    t.string "school_year"
  end

  create_table "student_grades", force: :cascade do |t|
    t.integer "student_name"
    t.integer "exam_id"
    t.text    "answer_keys",  default: [], array: true
    t.integer "status"
  end

  create_table "students", force: :cascade do |t|
    t.string  "first_name"
    t.string  "middle_initial"
    t.string  "last_name"
    t.integer "section_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password",  default: "", null: false
    t.string "full_name"
  end

end
