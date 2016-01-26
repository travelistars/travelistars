class CreateClosedDays < ActiveRecord::Migration
  def change
    create_table :closed_days do |t|
      t.references :entry
      t.integer :closed_code
      t.timestamps
    end
    add_index :closed_days, :entry_id
  end
end
