class CreateAgencies < ActiveRecord::Migration[6.1]
  def change
    create_table :agencies do |t|
      t.string :name, null: false
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
