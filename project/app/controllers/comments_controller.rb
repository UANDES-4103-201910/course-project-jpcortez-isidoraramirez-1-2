class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment=@post.comments.create(params[:comment].permit(:name, :body))
    @comment.name = current_user.email
    @comment.save
    redirect_to '/'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:post_id)
    end

end
