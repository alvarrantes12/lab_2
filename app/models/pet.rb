class Pet < ApplicationRecord
    validates :name, presence: true
    validates :name, length: {maximum: 10}

    validates :breed, presence: true
    validates :breed, length: {maximum: 10}

    validates :pedigree, presence: true
end
