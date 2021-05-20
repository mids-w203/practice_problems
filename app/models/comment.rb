class Comment < ApplicationRecord
  belongs_to :parent, optional: true, class_name: 'Comment'
  belongs_to :problem
  has_many :replies, class_name: 'Comment', foreign_key: 'parent_id', dependent: :destroy
  validates :body, presence: true
  belongs_to :user
 # default_scope { order(created_at: :desc) }
end
