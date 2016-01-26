class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.references :entry
      t.references :phone_type
      t.integer :country_code
      t.string :phone_number
      t.timestamps
    end
    add_index :phones, :entry_id
    add_index :phones, :phone_type_id
  end
end
