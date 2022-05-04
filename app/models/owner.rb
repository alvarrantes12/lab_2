class Owner < ApplicationRecord
    validates :name, length: { maximum: 10 }, presence: true 
    validates :last_name, length: { maximum: 15 }, presence: true
    validates :email, presence: true, email: true
    validates :identification_number, length: { maximum: 8, minimum: 5 }, presence: true, uniqueness: true
    has_many :pets
end
