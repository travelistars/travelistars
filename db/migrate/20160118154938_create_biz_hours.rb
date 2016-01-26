class CreateBizHours < ActiveRecord::Migration
  def change
    create_table :biz_hours do |t|
      t.references :entry
      t.integer :day_of_week
      t.datetime :open
      t.datetime :close
      t.timestamps
    end
    add_index :biz_hours, :entry_id
  end
end
