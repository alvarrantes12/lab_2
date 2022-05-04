class Pet < ApplicationRecord
	has_one :owner 
	validates :nombre, presence: true, length: { maximum: 10 }
	validates :raza, presence: true, length: { maximum: 10 }
	validates :pedigree, presence: true
end
