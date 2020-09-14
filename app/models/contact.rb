class Contact < ApplicationRecord
    has_many :contactEmails
    has_many :contactPhoneNumbers

    validates :firstName, presence: true
    validates :lastName, presence: true
    validates :twitterUsername, allow_blank: true
end
