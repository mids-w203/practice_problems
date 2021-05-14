class Problem < ApplicationRecord
  belongs_to :topic
  validates :statement, presence: true
end
