class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]


  respond_to :js, :html, :json
  def show
    @user= User.find(params[:id])
  end

  def index
    @users=User.all
  end

  def edit
    @user=User.find(params[:id])
  end
  def blacklisted
    @user = User.find(params[:id])
    @user.toggle!(:blacklist)
    redirect_back(fallback_location: :back)
  end
  def update
    @user=User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      flash.now[:alert] = "Empty username or already exists"
      render :edit
    end
  end
  def destroy
    @user=User.find(params[:id])
    @user.posts.each do |p|
      p.comments.each do |c|
      c.destroy
      end
      p.destroy
    end
    @user.destroy
    respond_to do |format|
      format.html { redirect_to manage_users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  def check_authorization
    unless current_user.id == params[:id] || current_user.admin || current_user.super
      redirect_to root_url
    end
  end



  def user_params
    params.require(:user).permit(:username, :bio, :avatar, :blacklist)
  end


end
