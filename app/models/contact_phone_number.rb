class ContactPhoneNumber < ApplicationRecord
    belongs_to :contact, class_name: "Contact", foreign_key: "contact_id"

    validates :phoneNumber, presence: true 
end
