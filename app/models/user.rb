class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true
    before_save {self.email = email.downcase}
    validates :full_name, presence: true
    has_many :comments, dependent: :destroy
    has_many :user_likes, dependent: :destroy

    def toggle_instructor
        if instructor?
            update_attribute(:instructor, false)
        else 
            update_attribute(:instructor, true)                    
        end
    end
end
