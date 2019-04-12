class SuperAdmin < ApplicationRecord
  has_many :administrators
  has_one :dumpster
  has_one :blacklist
  has_many :users
  has_many :posts
end
