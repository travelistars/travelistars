class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.references :entry
      t.references :price_type
      t.float :from
      t.float :to
      t.timestamps
    end
    add_index :prices, :entry_id
    add_index :prices, :price_type_id
  end
end
