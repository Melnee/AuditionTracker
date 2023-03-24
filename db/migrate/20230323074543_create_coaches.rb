class CreateCoaches < ActiveRecord::Migration[6.1]
  def change
    create_table :coaches do |t|
      t.string :name, null: false
      t.string :phone_number
      t.string :email
      t.string :cost_per_hour
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
