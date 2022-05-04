class Owner < ApplicationRecord
  validates :name, length: { maximum: 10 }, presence: true
	validates :last_name, length: { maximum: 15 }, presence: true
  validates :email, format: { with: /\A(\S+)@(.+)\.(\S+)\z/ }, presence: true
	validates :personal_id, length: { in: 5..8 }, presence: true, uniqueness: true
  has_many :pets
  
end
