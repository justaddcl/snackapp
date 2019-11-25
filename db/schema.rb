# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_23_215507) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_assignments_on_event_id"
    t.index ["user_id"], name: "index_assignments_on_user_id"
  end

  create_table "discipleship_communities", force: :cascade do |t|
    t.integer "user_id"
    t.string "night"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_discipleship_communities_on_user_id"
  end

  create_table "event_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer "event_type_id"
    t.string "description"
    t.integer "gatherable_id"
    t.string "gatherable_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "date"
    t.time "start_time"
    t.index ["description"], name: "index_events_on_description"
    t.index ["event_type_id"], name: "index_events_on_event_type_id"
  end

  create_table "small_groups", force: :cascade do |t|
    t.integer "user_id"
    t.integer "discipleship_community_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["discipleship_community_id"], name: "index_small_groups_on_discipleship_community_id"
    t.index ["user_id"], name: "index_small_groups_on_user_id"
  end

# Could not dump table "user_roles" because of following StandardError
#   Unknown type 'user_role_type' for column 'type'

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "remember_digest"
    t.boolean "admin", default: false
  end

  add_foreign_key "small_groups", "users"
end
