class CreateEntriesGenres < ActiveRecord::Migration
  def change
    create_table :entries_genres do |t|
      t.references :entry
      t.references :genre
      t.timestamps
    end

    add_index :entries_genres, :entry_id
    add_index :entries_genres, :genre_id
    add_index :entries_genres, [:entry_id, :genre_id], unique: true
  end
end
