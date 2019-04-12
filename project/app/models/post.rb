class Post < ApplicationRecord
  belongs_to :user
  belongs_to :dumpster
  belongs_to :super_admin
  belongs_to :administrator
  belongs_to :wall
end
