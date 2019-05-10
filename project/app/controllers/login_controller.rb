class LoginController < ApplicationController
		skip_before_action :verify_authenticity_token
  def login
  end
end
