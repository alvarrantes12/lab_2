class Owner < ApplicationRecord
    validates :first_name, presence: true, length: { maximum: 10 }
    validates :last_name, presence: true, length: { maximum: 15 }
    validates :email, presence: true
    validates :identification_number, presence: true, length: { minimum: 5, maximum: 8 }

    has_many :pet
end
