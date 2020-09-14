class Mutations::CreateContact < Mutations::BaseMutation
    argument :firstName, String, required: true
    argument :lastName, String, required: true
    argument :emails, [String],required: true
    argument :phoneNumbers, [String], required: true
    argument :twitterUsername, String,required: false

    field :contact, Types::ContactType, null: false
    field :errors, [String], null: false

    def resolve(firstName:, lastName:, emails:, phoneNumbers:, twitterUsername:,**attributes)
        contact = Contact.new(firstName: firstName, lastName: lastName,twitterUsername: twitterUsername)
    
        if contact.save
            emails.each do |email|
                userEmail  = ContactEmail.new(email: email,contact_id: contact.id)
                userEmail.save
            end

            phoneNumbers.each do |pB|
                userNumber  = ContactPhoneNumber.new(phoneNumber: pB,contact_id: contact.id)
                userNumber.save
            end
            
            {
                contact: contact,
                errors: []
            }
        else
            {
                contact: nil,
                errors: contact.errors.full_messages
            }
        end
    end
end