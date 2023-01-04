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

ActiveRecord::Schema[7.0].define(version: 2023_01_04_155358) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "procedures", force: :cascade do |t|
    t.integer "review_interval"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "review_tags", force: :cascade do |t|
    t.bigint "review_id"
    t.bigint "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["review_id"], name: "index_review_tags_on_review_id"
    t.index ["tag_id"], name: "index_review_tags_on_tag_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "version"
    t.string "title"
    t.string "author"
    t.string "environment"
    t.string "summary"
    t.binary "instructions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "system_id", null: false
    t.bigint "procedure_id", null: false
    t.index ["procedure_id"], name: "index_reviews_on_procedure_id"
    t.index ["system_id"], name: "index_reviews_on_system_id"
  end

  create_table "systems", force: :cascade do |t|
    t.string "name"
    t.string "hostname_production"
    t.string "hostname_homologa"
    t.string "description"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "reviews", "procedures"
  add_foreign_key "reviews", "systems"
end
