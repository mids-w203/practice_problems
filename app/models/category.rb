class Category < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    has_many :topics, dependent: :destroy
end
