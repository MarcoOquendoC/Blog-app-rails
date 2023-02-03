class CommentsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @user = User.find(params[:user_id])
    comment = Comment.new(comment_params)
    comment.author = current_user
    comment.post = @post

    if comment.save
      redirect_to user_post_path(@user.id, @post.id)
    else
      flash[:notice] = "Error: Couldn't create comment"
      render :new, locals: { comment: }
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
