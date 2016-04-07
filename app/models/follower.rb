class Follower < ActiveRecord::Base
  has_many :comments
  belongs_to :user, inverse_of: :user
  belongs_to :post
end
