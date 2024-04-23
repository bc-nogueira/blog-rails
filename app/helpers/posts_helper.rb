module PostsHelper
  def tag_options
    options_for_select(Tag.pluck(:name, :id), @post.tag_ids)
  end
end
