class RemoveDetailsFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :photo_id, :integer
    remove_column :comments, :follower_id, :integer
    remove_column :comments, :comment_date, :datetime
  end
end
