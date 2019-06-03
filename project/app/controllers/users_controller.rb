class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]
  
  before_action :set_user
  def show
    @user= User.find(params[:id])
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      flash.now[:alert] = "Empty username or already exists"
      render :edit
    end
  end




  def check_authorization
    unless current_user.id == params[:id] || current_user.admin || current_user.super
      redirect_to root_url
    end
  end

  def set_user
    @user=User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :bio, :avatar)
  end
end
