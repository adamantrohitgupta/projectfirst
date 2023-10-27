class Car < ApplicationRecord
    validates :name, presence: true
    validates :price, presence: true,length: { maximum:5}
    
end
