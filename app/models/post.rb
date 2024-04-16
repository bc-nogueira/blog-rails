class Post < ApplicationRecord
  belongs_to :user

  validates :title, :content, presence: true

  def author
    user
  end

  def author_name
    user.username
  end
end
