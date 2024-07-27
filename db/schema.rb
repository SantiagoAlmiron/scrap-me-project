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

ActiveRecord::Schema[7.1].define(version: 2024_07_27_214716) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cotizations", force: :cascade do |t|
    t.decimal "value", precision: 10, scale: 2
    t.bigint "economic_variable_id", null: false
    t.datetime "created_at", null: false
    t.index ["economic_variable_id"], name: "index_cotizations_on_economic_variable_id"
  end

  create_table "economic_variables", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "font_link"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "cotizations", "economic_variables"
end
