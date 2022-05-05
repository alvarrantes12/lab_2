class Pet < ApplicationRecord

    belongs_to :owner
    
    validates :name, length: {maximum: 10}, presence: true
    validates :breed, length: {maximum: 10}, presence: true
    validates :pedigree, presence: false

end
