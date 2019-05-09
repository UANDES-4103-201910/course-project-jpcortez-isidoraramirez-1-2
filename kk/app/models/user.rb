class User < ApplicationRecord
  belongs_to :blacklist
  belongs_to :super_admin
  belongs_to :administrator
  has_many :posts
  has_one :profile
  
end
