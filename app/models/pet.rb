class Pet < ApplicationRecord
    has_one :owner
    validates :name, presence: true, length: { maximum: 10}
    validates :lineage, presence: true, length: { maximum: 10}
    validates :pedigree, presence: true
end
