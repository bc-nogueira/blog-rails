class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.includes(:comments).includes(:tags).order(created_at: :desc)
    @tag_ids = params['tag_ids']&.reject { |id| id.blank? }
    @posts = @posts.where(tags: { id: @tag_ids }) if @tag_ids.present?
    @pagy, @posts = pagy(@posts, items: 3)
  end

  def show
    @comments = @post.comments
  end

  def new
    @post = current_user.posts.new
  end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      flash[:notice] = 'Post created successfully!'
      redirect_to @post
    else
      flash.now[:alert] = 'Failed to create post.'
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @post.update(post_params)
      flash[:notice] = 'Post updated successfully!'
      redirect_to @post
    else
      flash.now[:alert] = 'Failed to update post.'
      render :new, status: :unprocessable_entity
    end
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
    params.require(:post).permit(:title, :content, tag_ids: [])
  end
end
