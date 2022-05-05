class Owner < ApplicationRecord
    validates :name, presence: true, length: {minimum: 1, maximum: 10}
    validates :last_name, presence: true, length: {minimum: 1, maximum: 15} 
    validates :personal_id, uniqueness: true, presence: true,length: {minimum: 5, maximum: 8}
    validates_format_of :e_mail, with: URI::MailTo::EMAIL_REGEXP 
    has_many :pets 
end
