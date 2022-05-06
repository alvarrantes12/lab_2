class CreateOwner < ApplicationRecord
    validates :nombre, presence: true
    validates :apellido, presence: true
    validates :correo, presence: true
    validates :numeroIdentificacion, presence: true
    has_many :pet 
end
