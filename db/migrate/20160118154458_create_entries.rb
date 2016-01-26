class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :native_name, null: false
      t.string :alpha_name, null: false
      t.string :native_address
      t.string :alpha_address
      t.references :location
      t.timestamps
    end
    add_index :entries, :location_id
  end
end
