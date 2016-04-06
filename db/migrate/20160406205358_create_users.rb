class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.integer :follower_id
      t.string :email
      t.integer :post_id
      t.integer :photo_id
      t.string :message_to

      t.timestamps null: false
    end
  end
end
