class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :review
      t.references :entry
      t.text :review, null: false

      t.timestamps
    end
    add_index :reviews, :review_id
    add_index :reviews, :entry_id
  end
end
