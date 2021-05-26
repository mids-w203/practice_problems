class UserLike < ApplicationRecord
  belongs_to :user
  belongs_to :likable, polymorphic: true
end
