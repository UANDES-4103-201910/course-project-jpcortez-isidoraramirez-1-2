class User < ApplicationRecord
  belongs_to :blacklist
  belongs_to :super_admin
  belongs_to :administrator
  has_one :profile
  has_many :posts
  validates :password, :length => { :in => 8..12 }, :format => { :with => /\A[\sa-z0-9]+\Z/i }
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
