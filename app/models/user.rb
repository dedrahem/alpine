class User < ActiveRecord::Base
  has_many :photos, inverse_of: :photo
  has_many :comments, inverse_of: :comments
  has_many :posts, inverse_of: :post
  has_many :posts, through :comments
  has_many :followers, inverse_of: :followers
  has_many :posts, through :followers
end
