class CreateReps < ActiveRecord::Migration[6.1]
  def change
    create_table :reps do |t|
      t.boolean :is_manager, null: false, default: false
      t.string :name, null: false
      t.string :email
      t.string :phone_number
      t.string :phone_number_extension
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
