class Photo < ActiveRecord::Base
  belongs_to :user, inverse_of: :user
  belongs_to :post
  has_many :comments
end
