class Owner < ApplicationRecord
    has_many :pets
    validates :name, presence: true, length: { maximum: 10}
    validates :last_name, presence: true, length: { maximum: 15}
    validates :email, uniqueness: true, presence: true
    validates :personal_id, uniqueness: true, presence: true, length: { in: 4..8}

end
