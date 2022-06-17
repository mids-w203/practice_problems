class Level < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    has_many :problems, dependent: :destroy

    def color
        if(name == 'Easy')
            'green'
        elsif(name == 'Moderate')
            'orange'
        else
            'red'
        end
    end
end
