class Administrator < ApplicationRecord
  belongs_to :super_admin
  has_one :dumpster
  has_many :posts
  has_many :users
  has_one :blacklist
end
