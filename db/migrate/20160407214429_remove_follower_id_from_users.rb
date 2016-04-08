class RemoveFollowerIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :post_id, :integer
    remove_column :users, :follower_id, :integer
    remove_column :users, :photo_id, :integer
    remove_column :users, :message_to, :string
  end
end
