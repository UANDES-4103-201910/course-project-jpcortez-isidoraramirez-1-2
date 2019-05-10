class Post < ApplicationRecord
  belongs_to :user
  belongs_to :dumpster
  belongs_to :super_admin
  belongs_to :administrator
  belongs_to :wall
  has_many :likes
  has_many :flags
  has_many :comments
  has_many :attachments
  
end
