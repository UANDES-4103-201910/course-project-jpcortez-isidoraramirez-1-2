class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :vote]
  before_action :authenticate_user!, except: [:show, :index] , only: [:new, :vote]
  respond_to :js, :html, :json
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

 # def vote
  #  if !current_user.liked? @post
   #   @post.liked_by current_user
    #elsif current_user.liked? @post
    #  @post.unliked_by current_user
    #end
  #end
  def dumpsterr
    @post = Post.find(params[:id])
    @post.toggle!(:dumpster)
    redirect_back(fallback_location: :back)
  end
  def like
    @post = Post.find(params[:id])
    if current_user
      if !current_user.liked? @post
      @post.liked_by current_user
      elsif current_user.liked? @post
      @post.unliked_by current_user
    end
    redirect_back(fallback_location: :back)
    end
  end

  def dislike
    @post = Post.find(params[:id])
    if current_user
      if !current_user.disliked? @post
      @post.disliked_by current_user
      elsif current_user.disliked? @post
      @post.undisliked_by current_user
    end
    redirect_back(fallback_location: :back)
    end
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.user = current_user
    respond_to do |format|
      if @post.save
        format.html { redirect_to '/', notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.comments.each do |c|
      c.destroy
    end
    @post.destroy
    respond_to do |format|
      format.html { redirect_to manage_posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body, :avatar)
    end
end
