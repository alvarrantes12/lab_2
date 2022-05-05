class Pet < ApplicationRecord
    
    validates :name, presence: true, length: {minimum: 1, maximum: 10}
    validates :breed, presence: true, length: {minimum: 1, maximum: 10} 
    validates :pedigree,  presence: true
end
