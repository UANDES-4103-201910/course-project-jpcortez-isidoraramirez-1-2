class Blacklist < ApplicationRecord
  belongs_to :super_admin
  belongs_to :administrator
  has_many :users
end
