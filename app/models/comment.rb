class Comment < ApplicationRecord
  belongs_to :parent, optional: true, class_name: 'Comment'
  belongs_to :problem
  has_many :replies, class_name: 'Comment', foreign_key: 'parent_id', dependent: :destroy
  validates :body, presence: true
  belongs_to :user
  has_many :user_likes, as: :likable, dependent: :destroy
  has_many :likers, through: :user_likes, source: :user

  def like(user)
    likers << user unless liked?(user)
  end

  def unlike(user)
    likers.delete(user) if liked?(user)
  end

  def likes
    user_likes.size
  end

  def liked?(user)
    likers.include? user
  end
 # default_scope { order(created_at: :desc) }
end
