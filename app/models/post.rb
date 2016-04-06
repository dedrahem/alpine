class Post < ActiveRecord::Base
  has_many :followers
  has_many :users, through :followers
  has_one :photo
  belongs_to :user, inverse_of: :users
  has_many :comments
  has_many :users, through :comments
end
