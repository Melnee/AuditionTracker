# frozen_string_literal: true

class CreateAuditions < ActiveRecord::Migration[6.1]
  def change
    create_table :auditions do |t|
      t.datetime :datetime
      t.string :project_name
      t.integer :union_status # enum
      t.integer :project_medium # enum
      t.integer :role_size # enum
      t.string :role_size_custom_input
      t.string :role_name
      t.boolean :accent_was_required, default: false, null: false
      t.integer :age_range, array: true, default: []
      t.integer :role_type # enum
      t.text :role_description
      t.text :notes_from_room
      t.boolean :callback, default: false, null: false
      t.boolean :chemistry_read, default: false, null: false
      t.boolean :booked, default: false, null: false
      t.references :agent, index: true, foreign_key: true
      t.references :who_booked_it, index: true, foreign_key: { to_table: :actors }
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
