class User < ActiveRecord::Base
  has_many :photos, inverse_of: :photo
  has_many :comments
  has_many :posts, inverse_of: :post
  has_many :posts, through :comments
  has_many :followers
  has_many :posts, through :followers
end
