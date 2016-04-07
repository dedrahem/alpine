class Comment < ActiveRecord::Base
  belongs_to :post, inverse_of: :post
  belongs_to :user, inverse_of: :user
  belongs_to :photo
end
