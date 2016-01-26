class CreateEntryLinks < ActiveRecord::Migration
  def change
    create_table :entry_links do |t|
      t.references :entry
      t.references :link
      t.timestamps
    end
    add_index :entry_links, :entry_id
    add_index :entry_links, :link_id
  end
end
