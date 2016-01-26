class CreateEntryGenres < ActiveRecord::Migration
  def change
    create_table :entry_genres do |t|
      t.references :entry
      t.references :genre
      t.timestamps
    end
    add_index :entry_genres, :entry_id
    add_index :entry_genres, :genre_id
  end
end
