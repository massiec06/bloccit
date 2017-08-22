class Topic < ApplicationRecord
  has_many :posts, :sponsored_posts, dependent: :destroy
end
