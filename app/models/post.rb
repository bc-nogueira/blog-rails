class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, :content, presence: true

  def author
    user
  end

  def author_name
    user.username
  end
end
