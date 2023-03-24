class CreateCastingAgencies < ActiveRecord::Migration[6.1]
  def change
    create_table :casting_agencies do |t|
      t.string :name, null: false
      t.text :notes
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
