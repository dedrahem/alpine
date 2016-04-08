class AddLongitudeToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :longitude, :string
    add_column :posts, :latitude, :string
    add_column :posts, :photo_date, :datetime
  end
end
