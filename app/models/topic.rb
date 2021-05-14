class Topic < ApplicationRecord
  belongs_to :category
  validates :title, uniqueness: true, presence: true
end
