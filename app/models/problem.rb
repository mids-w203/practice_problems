class Problem < ApplicationRecord
  belongs_to :topic
  validates :statement, presence: true
  validates :index, presence: true
  default_scope { order(index: :asc) }
  
  def like
    update_attribute(:likes, (likes || 0) + 1)
  end
end
