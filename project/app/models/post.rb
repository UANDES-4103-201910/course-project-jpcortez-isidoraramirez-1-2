class Post < ApplicationRecord
  acts_as_votable
  before_create :default_dumpster
  mount_uploader :avatar, AvatarUploader
  belongs_to :user
  has_many :comments

  def default_dumpster
     self.dumpster ||= false
  end
end
