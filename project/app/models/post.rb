class Post < ApplicationRecord
  acts_as_votable
  mount_uploader :avatar, AvatarUploader
  belongs_to :user
  has_many :comments

end
