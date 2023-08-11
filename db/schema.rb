# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_11_093018) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appropriate_bodies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "email_addresses", force: :cascade do |t|
    t.string "email"
    t.integer "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "induction_periods", force: :cascade do |t|
    t.integer "mentorship_id", null: false
    t.integer "appropriate_body_id", null: false
    t.integer "induction_programme_id", null: false
    t.date "started_on", null: false
    t.date "finished_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "induction_programmes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mentorships", force: :cascade do |t|
    t.integer "teacher_id"
    t.integer "tenureship_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "name", null: false
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name", null: false
    t.integer "trn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tenureships", force: :cascade do |t|
    t.integer "teacher_id"
    t.integer "school_id"
    t.date "started_on"
    t.date "finished_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "email_addresses", "teachers"
  add_foreign_key "induction_periods", "appropriate_bodies"
  add_foreign_key "induction_periods", "induction_programmes"
  add_foreign_key "induction_periods", "mentorships"
  add_foreign_key "mentorships", "teachers"
  add_foreign_key "mentorships", "tenureships"
  add_foreign_key "schools", "schools", column: "parent_id"
  add_foreign_key "tenureships", "schools"
  add_foreign_key "tenureships", "teachers"
end
