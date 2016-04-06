class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.integer :post_id
      t.string :longitude
      t.string :latitude
      t.string :altitude
      t.datetime :capture_date
      t.datetime :transfer_date
      t.integer :comment_id

      t.timestamps null: false
    end
  end
end
