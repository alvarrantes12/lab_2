class Owner < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :personal_number, presence: true

    validates :personal_number, uniqueness: true

    validates :first_name, length: {maximum: 10}
    validates :last_name,  length: {maximum: 15}
    validates :personal_number,  length: {maximum: 8}
    validates :personal_number,  length: {minimum: 5}
end
