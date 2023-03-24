class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :address_line1, null: false
      t.string :address_line2, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip, null: false
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
