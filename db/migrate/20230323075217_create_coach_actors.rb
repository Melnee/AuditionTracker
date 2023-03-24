class CreateCoachActors < ActiveRecord::Migration[6.1]
  def change
    create_table :coach_actors do |t|
      t.references :coach, index: true, foreign_key: true
      t.references :actor, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
