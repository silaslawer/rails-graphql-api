class Mutations::CreateContact < Mutations::BaseMutation
    argument :firstName, String, required: true
    argument :lastName, String, required: true
    argument :emails, [String],required: true
    argument :phoneNumbers, [String], required: true
    argument :twitterUsername, String,required: false

    field :contact, Types::ContactType, null: false
    field :errors, [String], null: false

    def resolve(firstName:, lastName:, emails:, phoneNumbers:, twitterUsername:)
    
        check_contact_name = Contact.find_by(firstName: firstName,lastName: lastName)
       
        puts "::::::::::#{check_contact_name.inspect}"
        if check_contact_name.present?
            {
                contact: nil,
                errors: [{"message": "Contact already exists"}]
            }
        else
            @contact = Contact.new(firstName: firstName,lastName: lastName,twitterUsername: twitterUsername)
            if  @contact.save
                emails.each do |email|
                    @check_email = ContactEmail.find_by(email: email)
    
                    if @check_email.present?
                        {
                            contact: nil,
                            errors: @check_email.errors.messages
                        }
                    else
                        @userEmail  = ContactEmail.create!(email: email,contact_id: @contact.id)
                        
                    end
                end
    
                phoneNumbers.each do |pB|
                    @check_phone_number = ContactPhoneNumber.find_by(phoneNumber: pB)
                    if @check_phone_number.present?
                        {
                            contact: nil,
                            errors: @check_phone_number.errors.messages
                        }
                    else
                        @userNumber = ContactPhoneNumber.create!(phoneNumber: pB,contact_id: @contact.id)
                    end
                end
            
               
                {
                    contact: @contact,
                    errors: []
                }
            else
                {
                    contact: nil,
                    errors: @contact.errors.messages
                }
            end
            
        end
    end
end