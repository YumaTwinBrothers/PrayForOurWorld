class Blog < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 3, maximum: 500 }
  belongs_to :user
  validates :user_id, presence: true
  default_scope -> { order(updated_at: :desc)}
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  def thumbs_up_total
    self.likes.where(like: true).size
  end

  def thumbs_down_total
    self.likes.where(like: false).size
  end
end
