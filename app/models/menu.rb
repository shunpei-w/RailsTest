class Menu < ApplicationRecord
    validates :name,:price,:cost, presence: true
end
