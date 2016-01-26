class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :name, unique: true
      t.string :icon_path
      t.timestamps
    end
  end
end
