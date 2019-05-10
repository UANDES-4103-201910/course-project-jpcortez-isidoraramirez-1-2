class SuperAdmin < ApplicationRecord
	has_many :administrators
	has_one :blacklist
	has_one :dumpster
	has_many :posts
	has_many :users
end
