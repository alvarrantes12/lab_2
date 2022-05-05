class Owner < ApplicationRecord

    has_many :pets
    
    validates :name, length: {maximum: 10}, presence: true
    validates :last_name, length: {maximum: 15}, presence: true
    validates :email, presence: true, email: true
    validates :identification, length: {minimum: 5, maximum: 8}, presence: true, uniqueness: true
    
end
