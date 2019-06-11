class User < ApplicationRecord
  acts_as_voter
  has_many :posts
  before_create :default_username
  before_create :default_blacklist
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable,
         :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_omniauth(access_token)
  data = access_token.info
  user = User.where(email: data['email']).first
    unless user
        user = User.create(email: data['email'], password: Devise.friendly_token[0,20])
    end
  user
  end

def default_username
   self.username ||= "new_user"
end

def default_blacklist
   self.username ||= false
end
end
