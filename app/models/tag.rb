class Tag < ApplicationRecord
  belongs_to :user

  has_and_belongs_to_many :posts

  validates :name, :color, presence: true
  validates :name, uniqueness: { case_sensitive: false }

  before_validation :generate_color, if: -> { color.blank? }

  private

  def generate_color
    self.color = "##{SecureRandom.hex(3)}"
  end
end
