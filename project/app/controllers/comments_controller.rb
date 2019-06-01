class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment=@post.comments.create(params[:comment].permit(:name, :body))
    @comment.name = current_user.email
    @comment.save
    redirect_to post_path(@post)
  end

end
