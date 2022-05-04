class Pet < ApplicationRecord
  validates :name, length: { maximum: 10 }, presence: true
	validates :breed, length: { maximum: 10 }, presence: true
  validates_inclusion_of :pedigree, in: [true, false]
  has_one :owner
end
