class CreateEntriesLinks < ActiveRecord::Migration
  def change
    create_table :entries_links do |t|
      t.references :entry
      t.references :link
      t.timestamps
    end
    add_index :entries_links, :entry_id
    add_index :entries_links, :link_id
  end
end
