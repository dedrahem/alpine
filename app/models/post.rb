class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments



  attachment :photo, content_type: "image/jpeg"
  validates :title, :photo, presence: true

  after_save :load_exif!

  def load_exif!
    exif = EXIFR::JPEG.new(photo.download.path)
    if exif.gps
      update_column :photo_date, exif.date_time.to_date
      update_column :latitude, exif.gps.latitude
      update_column :longitude, exif.gps.longitude
    end
  end
end
