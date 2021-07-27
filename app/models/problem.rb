class Problem < ApplicationRecord
  belongs_to :topic
  validates :statement, presence: true
  validates :index, presence: true
  default_scope { order(index: :asc) }
  has_many :comments, dependent: :destroy
  has_many :user_likes, as: :likable, dependent: :destroy
  has_many :likers, through: :user_likes, source: :user
  belongs_to :level
  
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
end
