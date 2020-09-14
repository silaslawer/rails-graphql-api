class Contact < ApplicationRecord
    has_many :contactEmails
    has_many :contactPhoneNumbers

    validates_presence_of :firstName, :lastName, presence: true

end
