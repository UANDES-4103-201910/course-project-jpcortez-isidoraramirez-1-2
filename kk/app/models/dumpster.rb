class Dumpster < ApplicationRecord
  belongs_to :super_admin
  belongs_to :administrator
  has_many :posts
end
