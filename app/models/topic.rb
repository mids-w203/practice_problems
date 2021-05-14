class Topic < ApplicationRecord
  belongs_to :category
  has_many :problems, dependent: :destroy
  validates :title, uniqueness: true, presence: true
  default_scope { order(index: :asc) }
end
