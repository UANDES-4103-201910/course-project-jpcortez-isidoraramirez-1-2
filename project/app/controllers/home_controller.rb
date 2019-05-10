class HomeController < ApplicationController
	skip_before_action :verify_authenticity_token
  def home
  	@posts=Post.all
  	@users=User.all
  end
end
