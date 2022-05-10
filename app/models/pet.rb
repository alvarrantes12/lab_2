class Pet < ApplicationRecord
    belongs_to :Owner
    validates :name, presence: true, length: {minimum: 1, maximum: 10}
    validates :breed, presence: true, length: {minimum: 1, maximum: 10} 
    validates :pedigree, inclusion: [true, false]
end
