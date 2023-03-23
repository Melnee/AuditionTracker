# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_230_323_043_349) do
  create_table 'auditions', force: :cascade do |t|
    t.datetime 'datetime'
    t.string 'project_name'
    t.integer 'union_status'
    t.integer 'project_medium'
    t.integer 'role_size'
    t.string 'role_size_custom_input'
    t.string 'role_name'
    t.boolean 'accent_was_required', default: false, null: false
    t.integer 'age_range'
    t.integer 'role_type'
    t.text 'role_description'
    t.text 'notes_from_room'
    t.boolean 'callback', default: false, null: false
    t.boolean 'chemistry_read', default: false, null: false
    t.boolean 'booked', default: false, null: false
    t.integer 'agent_id'
    t.integer 'who_booked_it_id'
    t.integer 'user_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['agent_id'], name: 'index_auditions_on_agent_id'
    t.index ['user_id'], name: 'index_auditions_on_user_id'
    t.index ['who_booked_it_id'], name: 'index_auditions_on_who_booked_it_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'provider', default: 'email', null: false
    t.string 'uid', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.boolean 'allow_password_change', default: false
    t.datetime 'remember_created_at'
    t.string 'confirmation_token'
    t.datetime 'confirmed_at'
    t.datetime 'confirmation_sent_at'
    t.string 'unconfirmed_email'
    t.string 'name'
    t.string 'image'
    t.string 'email'
    t.text 'tokens'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['confirmation_token'], name: 'index_users_on_confirmation_token', unique: true
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
    t.index %w[uid provider], name: 'index_users_on_uid_and_provider', unique: true
  end

  add_foreign_key 'auditions', 'actors', column: 'who_booked_it_id'
  add_foreign_key 'auditions', 'agents'
  add_foreign_key 'auditions', 'users'
end
