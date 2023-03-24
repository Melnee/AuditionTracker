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

ActiveRecord::Schema.define(version: 2023_03_23_075732) do

  create_table "actor_agencies", force: :cascade do |t|
    t.integer "representation_type", null: false
    t.integer "actor_id"
    t.integer "agency_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["actor_id"], name: "index_actor_agencies_on_actor_id"
    t.index ["agency_id"], name: "index_actor_agencies_on_agency_id"
    t.index ["user_id"], name: "index_actor_agencies_on_user_id"
  end

  create_table "actors", force: :cascade do |t|
    t.string "name", null: false
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_actors_on_user_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.string "address_line1", null: false
    t.string "address_line2", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "zip", null: false
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "agencies", force: :cascade do |t|
    t.string "name", null: false
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_agencies_on_user_id"
  end

  create_table "audition_casting_directors", force: :cascade do |t|
    t.integer "audition_id"
    t.integer "casting_director_id"
    t.boolean "is_assistant"
    t.boolean "is_associate"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["audition_id"], name: "index_audition_casting_directors_on_audition_id"
    t.index ["casting_director_id"], name: "index_audition_casting_directors_on_casting_director_id"
    t.index ["user_id"], name: "index_audition_casting_directors_on_user_id"
  end

  create_table "auditions", force: :cascade do |t|
    t.datetime "datetime"
    t.string "project_name"
    t.integer "union_status"
    t.integer "project_medium"
    t.integer "role_size"
    t.string "role_size_custom_input"
    t.string "role_name"
    t.boolean "accent_was_required", default: false, null: false
    t.integer "age_range"
    t.integer "role_type"
    t.text "role_description"
    t.text "notes_from_room"
    t.boolean "callback", default: false, null: false
    t.boolean "chemistry_read", default: false, null: false
    t.boolean "booked", default: false, null: false
    t.integer "agent_id"
    t.integer "who_booked_it_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["agent_id"], name: "index_auditions_on_agent_id"
    t.index ["user_id"], name: "index_auditions_on_user_id"
    t.index ["who_booked_it_id"], name: "index_auditions_on_who_booked_it_id"
  end

  create_table "casting_agencies", force: :cascade do |t|
    t.string "name", null: false
    t.text "notes"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_casting_agencies_on_user_id"
  end

  create_table "casting_director_casting_agencies", force: :cascade do |t|
    t.integer "casting_director_id"
    t.integer "casting_agencies_id"
    t.boolean "is_associate"
    t.boolean "is_assistant"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["casting_agencies_id"], name: "index_casting_director_casting_agencies_on_casting_agencies_id"
    t.index ["casting_director_id"], name: "index_casting_director_casting_agencies_on_casting_director_id"
    t.index ["user_id"], name: "index_casting_director_casting_agencies_on_user_id"
  end

  create_table "casting_directors", force: :cascade do |t|
    t.string "name", null: false
    t.string "phone_number"
    t.string "email"
    t.text "notes"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_casting_directors_on_user_id"
  end

  create_table "coach_actors", force: :cascade do |t|
    t.integer "coach_id"
    t.integer "actor_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["actor_id"], name: "index_coach_actors_on_actor_id"
    t.index ["coach_id"], name: "index_coach_actors_on_coach_id"
    t.index ["user_id"], name: "index_coach_actors_on_user_id"
  end

  create_table "coaches", force: :cascade do |t|
    t.string "name", null: false
    t.string "phone_number"
    t.string "email"
    t.string "cost_per_hour"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_coaches_on_user_id"
  end

  create_table "reps", force: :cascade do |t|
    t.boolean "is_manager", default: false, null: false
    t.string "name", null: false
    t.string "email"
    t.string "phone_number"
    t.string "phone_number_extension"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_reps_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "image"
    t.string "email"
    t.text "tokens"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "actor_agencies", "actors"
  add_foreign_key "actor_agencies", "agencies"
  add_foreign_key "actor_agencies", "users"
  add_foreign_key "actors", "users"
  add_foreign_key "addresses", "users"
  add_foreign_key "agencies", "users"
  add_foreign_key "audition_casting_directors", "auditions"
  add_foreign_key "audition_casting_directors", "casting_directors"
  add_foreign_key "audition_casting_directors", "users"
  add_foreign_key "auditions", "actors", column: "who_booked_it_id"
  add_foreign_key "auditions", "agents"
  add_foreign_key "auditions", "users"
  add_foreign_key "casting_agencies", "users"
  add_foreign_key "casting_director_casting_agencies", "casting_agencies", column: "casting_agencies_id"
  add_foreign_key "casting_director_casting_agencies", "casting_directors"
  add_foreign_key "casting_director_casting_agencies", "users"
  add_foreign_key "casting_directors", "users"
  add_foreign_key "coach_actors", "actors"
  add_foreign_key "coach_actors", "coaches"
  add_foreign_key "coach_actors", "users"
  add_foreign_key "coaches", "users"
  add_foreign_key "reps", "users"
end
