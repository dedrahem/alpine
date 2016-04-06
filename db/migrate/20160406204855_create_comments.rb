class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :remark
      t.integer :post_id
      t.integer :user_id
      t.integer :photo_id
      t.integer :follower_id
      t.datetime :comment_date

      t.timestamps null: false
    end
  end
end
