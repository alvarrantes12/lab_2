class Pet < ApplicationRecord
    validates :name, presence: true, length: { maximum: 10 }
    validates :race, presence: true, length: { maximum: 10 }
    validates :pedigree, presence: true

    belongs_to :owner
end
