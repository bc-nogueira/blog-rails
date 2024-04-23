class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user, optional: true

  validates :content, presence: true

  def author
    user
  end

  def author_name
    user&.username || 'anonymous'
  end
end
