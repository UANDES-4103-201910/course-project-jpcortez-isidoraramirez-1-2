class User < ApplicationRecord
  belongs_to :blacklist
  belongs_to :super_admin
  belongs_to :administrator
  has_one :profile
  has_many :posts
end
