class DbSetup < ActiveRecord::Migration[6.0]
  def change
    create_table "assignments", force: :cascade do |t|
      t.integer "user_id"
      t.integer "event_id"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.index ["event_id"], name: "index_assignments_on_event_id"
      t.index ["user_id"], name: "index_assignments_on_user_id"
    end

    create_table "discipleship_communities", force: :cascade do |t|
      t.integer "pastor_id"
      t.string "night"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.index ["pastor_id"], name: "index_discipleship_communities_on_pastor_id"
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
      t.integer "leader_id"
      t.integer "discipleship_community_id"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.index ["discipleship_community_id"], name: "index_small_groups_on_discipleship_community_id"
      t.index ["leader_id"], name: "index_small_groups_on_leader_id"
    end

    execute <<-DDL
      CREATE TYPE user_role_type AS ENUM (
        'discipleship_community_pastor',
        'discipleship_community_coordinator',
        'small_group_leader',
        'small_group_member',
        'small_group_coordinator'
      );
    DDL

    create_table "user_roles", force: :cascade do |t|
      t.integer "user_id"
      t.integer "group_id"

      t.column :type, :user_role_type
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
    end

    add_index :user_roles, :user_id
    add_index :user_roles, :group_id

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

  end
end
