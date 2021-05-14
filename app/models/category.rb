class Category < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    has_many :topics, dependent: :destroy
    default_scope { order(index: :asc) }
end
