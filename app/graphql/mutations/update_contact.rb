module Mutations
    class UpdateContact < ::Mutations::BaseMutation
        argument :id, Integer, required: true
        argument :firstName, String, required: false
        argument :lastName, String, required: false
        argument :emails, [String],required: false
        argument :phoneNumbers, [String], required: false
        argument :twitterUsername, String,required: false

        field :contact, Types::ContactType, null: false
        field :errors, [String], null: false
        type Types::ContactType
  
        def resolve(id:)
            contact_list = Contact.find_by(id: id)

            emails.each do |email|
                check_email = ContactEmail.find_by(email: emails)

                if !check_email.present?
                    ContactEmail.create!(email: email,contact_id: id)
                end
            end
            phoneNumbers.each do |pB|
                check_phone_number = ContactPhoneNumber.find_by(phoneNumber: pB)

                if !check_phone_number.present?
                    ContactPhoneNumber.create!(email: email,contact_id: id)
                end
            end
                contact_list.update(
                    firstName: firstName,
                    lastName: lastName,
                    twitterUsername: twitterUsername)
            contact_list
        end
    end
end