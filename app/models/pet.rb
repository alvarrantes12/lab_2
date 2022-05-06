class Pet < ApplicationRecord
    validates :name, presence: true
    validates :race, presence: true
    validates :pedigree, presence: true

end
