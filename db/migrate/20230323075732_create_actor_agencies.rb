class CreateActorAgencies < ActiveRecord::Migration[6.1]
  def change
    create_table :actor_agencies do |t|
      t.integer :representation_type, null: false
      t.references :actor, index: true, foreign_key: true
      t.references :agency, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
