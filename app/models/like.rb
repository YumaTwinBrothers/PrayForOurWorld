class Like < ApplicationRecord
  belongs_to :user
  belongs_to :blog
  belongs_to :comment

  validates_uniqueness_of :user, scope: :blog
  validates_uniqueness_of :user, scope: :comment
end
