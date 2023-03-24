class CreateAuditionCastingDirectors < ActiveRecord::Migration[6.1]
  def change
    create_table :audition_casting_directors do |t|
      t.references :audition, index: true, foreign_key: true
      t.references :casting_director, index: true, foreign_key: true
      t.boolean :is_assistant
      t.boolean :is_associate
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
