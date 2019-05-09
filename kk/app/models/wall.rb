class Wall < ApplicationRecord
  belongs_to :profile
  has_many :posts
end
