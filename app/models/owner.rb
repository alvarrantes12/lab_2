class Owner < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :personal_id, uniqueness: true, presence: true
end