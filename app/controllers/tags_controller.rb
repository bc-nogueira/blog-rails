class TagsController < ApplicationController
  before_action :find_tag, only: %i[edit update destroy]

  def index
    @pagy, @tags = pagy(Tag.order(created_at: :asc), items: 10)
  end

  def new
    @tag = current_user.tags.new
  end

  def create
    @tag = current_user.tags.new(tag_params)

    if @tag.save
      flash[:notice] = 'Tag created successfully!'
      redirect_to tags_path
    else
      flash.now[:alert] = 'Failed to create tag.'
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @tag.update(tag_params)
      flash[:notice] = 'Tag updated successfully!'
      redirect_to tags_path
    else
      flash.now[:alert] = 'Failed to update tag.'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @tag.destroy
    flash[:notice] = 'Tag deleted successfully!'
    redirect_to tags_path
  end

  private

  def find_tag
    @tag = Tag.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:name, :color)
  end
end
