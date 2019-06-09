class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment=@post.comments.create(params[:comment].permit(:name, :body))
    @comment.name = current_user.email
    @comment.save
    redirect_to '/'
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.name = current_user.username
    @comment.save 
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path)  }
      format.json { head :no_content }
    end 
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:name, :body, :post_id)
    end

end
