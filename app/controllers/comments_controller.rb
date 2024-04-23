class CommentsController < ApplicationController
  before_action :find_comment, only: :destroy

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      flash[:notice] = 'Comment created successfully!'
      redirect_to @comment.post
    else
      flash.now[:alert] = 'Failed to create comment.'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @comment.destroy
    flash[:notice] = 'Comment deleted successfully!'
    redirect_to @comment.post
  end

  private

  def find_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id)
  end
end
