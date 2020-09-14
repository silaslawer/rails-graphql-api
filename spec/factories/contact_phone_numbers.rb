FactoryBot.define do
    factory :contact_phone_number do
        phoneNumber { Faker::PhoneNumber.cell_phone_in_e164 }
    end
end