class Owner < ApplicationRecord
	has_many :pets
	validates :nombre, presence: true, length: { maximum: 10 }
	validates :apellido, presence: true, length: { maximum: 15 }
	validates :correo_electronico, uniqueness: true, presence: true
	validates :identificacion, uniqueness: true, presence: true, length: { in: 4..8 }
end
