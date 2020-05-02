class Comment < ApplicationRecord
  validates :body, presence: true, length: { minimum: 3, maximum: 140 }
  belongs_to :user
  belongs_to :blog
  validates :user_id, presence: true
  validates :blog_id, presence: true
  has_many :likes, dependent: :destroy
  default_scope -> { order(updated_at: :desc)}

  def thumbs_up_total
    self.likes.where(like: true).size
  end

  def thumbs_down_total
    self.likes.where(like: false).size
  end
end
