class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.order(created_at: :desc)
  end

  def show; end

  def new
    @post = current_user.posts.new
  end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      flash[:notice] = 'Post created successfully!'
      redirect_to posts_path
    else
      flash.now[:alert] = 'Failed to create post.'
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update

  end

  def destroy
    @post.destroy
    flash[:notice] = 'Post deleted successfully!'
    redirect_to posts_path
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
