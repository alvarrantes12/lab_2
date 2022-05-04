class Pet < ApplicationRecord
    validates :name,length: { maximum: 10 } , presence: true
    validates :breed,length: { maximum: 10 }, presence: true
    validates :pedigree, presence: true
    has_one :owner
end
