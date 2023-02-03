class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
  end

  def show
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.author_id = current_user.id
    @post.comments_counter = 0
    @post.likes_counter = 0

    if @post.save
      redirect_to user_posts_path, notice: 'Post successfully created'
    else
      flash[:notice] = "Error: Couldn't create post"
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
