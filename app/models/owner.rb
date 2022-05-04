class Owner < ApplicationRecord
      validates :name, presence: true, length: {maximum: 10}
      validates :last_name, presence: true, length: {maximum: 15}
      validates :email, presence: true, format: { with: /\A(\S+)@(.+)\.(\S+)\z/ }
      validates :personal_id, presence: true, uniqueness: true, length: {minimum: 5, maximum: 8}
      has_many  :pets
  end