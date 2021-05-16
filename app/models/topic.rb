class Topic < ApplicationRecord
  belongs_to :category
  has_many :problems, dependent: :destroy
  validates :title presence: true
  default_scope { order(index: :asc) }
end
