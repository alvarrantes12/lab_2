class Pet < ApplicationRecord
    validates :nombre, presence: true
    validates :raza, presence: true
    validates :pedigree, presence: true
    belongs_to :create_owner
end
