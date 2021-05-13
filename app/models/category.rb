class Category < ApplicationRecord
    validates :title, presence: true, uniqueness: true
end
