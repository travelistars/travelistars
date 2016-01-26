class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :review

      t.timestamps
    end
    add_index :reviews, :review_id
  end
end
