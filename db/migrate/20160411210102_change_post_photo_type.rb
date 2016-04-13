class ChangePostPhotoType < ActiveRecord::Migration
  def change
    change_column :posts, :photo_id, :string
  end
end
