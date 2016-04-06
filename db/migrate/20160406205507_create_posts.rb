class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :comment_id
      t.integer :photo_id
      t.string :title
      t.text :postbody
      t.integer :likes
      t.datetime :post_date

      t.timestamps null: false
    end
  end
end
