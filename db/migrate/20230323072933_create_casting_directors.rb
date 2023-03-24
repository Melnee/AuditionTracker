class CreateCastingDirectors < ActiveRecord::Migration[6.1]
  def change
    create_table :casting_directors do |t|
      t.string :name, null: false
      t.string :phone_number
      t.string :email
      t.text :notes
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
