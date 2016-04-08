class DropFollowers < ActiveRecord::Migration
  def change
    drop_table :followers
    drop_table :photos
  end
end
