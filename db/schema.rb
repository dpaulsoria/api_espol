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

ActiveRecord::Schema[7.0].define(version: 2022_09_05_194819) do
  create_table "courses", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.integer "credits"
    t.integer "par"
    t.string "aula"
    t.string "mode"
    t.string "campus"
    t.string "class_schedule"
    t.string "exam_schedule"
    t.string "professor"
    t.integer "max_capacity"
    t.integer "current_capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_courses_on_code", unique: true
  end

  create_table "professors", force: :cascade do |t|
    t.string "user"
    t.string "email"
    t.string "name"
    t.decimal "rank"
    t.string "passwd"
    t.string "courses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_professors_on_email", unique: true
    t.index ["user"], name: "index_professors_on_user", unique: true
  end

  create_table "students", force: :cascade do |t|
    t.string "matricula"
    t.integer "ise"
    t.string "etnico"
    t.string "sancion"
    t.decimal "prom_gen_apro"
    t.integer "credits_vinculacion"
    t.string "user"
    t.string "email"
    t.string "name"
    t.integer "credits"
    t.string "passwrd"
    t.string "class_schedule"
    t.string "exam_schedule"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["matricula"], name: "index_students_on_matricula", unique: true
    t.index ["user"], name: "index_students_on_user", unique: true
  end

end
