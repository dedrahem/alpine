class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.integer :user_id
      t.integer :photo_id
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
