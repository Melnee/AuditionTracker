class CreateCastingDirectorCastingAgencies < ActiveRecord::Migration[6.1]
  def change
    create_table :casting_director_casting_agencies do |t|
      t.references :casting_director, index: true, foreign_key: true
      t.references :casting_agencies, index: true, foreign_key: true
      t.boolean :is_associate
      t.boolean :is_assistant
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
