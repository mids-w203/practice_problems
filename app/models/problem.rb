class Problem < ApplicationRecord
  belongs_to :topic
  validates :statement, presence: true

  def like
    update_attribute(:likes, (likes || 0) + 1)
  end
end
