class Pet < ApplicationRecord
    validates :name, presence: true, length: {maximum: 10}
    validates :breed, presence: true, length: {maximum: 10}
    validates :pedigree, inclusion: { in: [true, false] }
    has_one :owner
end
