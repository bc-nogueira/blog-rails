module PostsHelper
  def tag_options(selected_ids)
    options_for_select(Tag.pluck(:name, :id), selected_ids)
  end
end
