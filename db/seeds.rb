# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Contact.destroy_all
ContactEmail.destroy_all
ContactPhoneNumber.destroy_all

contact1 = Contact.create(firstName: Faker::Name.first_name, lastName: Faker::Name.last_name,twitterUsername: Faker::Twitter.screen_name)
contact2 = Contact.create(firstName: Faker::Name.first_name, lastName: Faker::Name.last_name,twitterUsername: Faker::Twitter.screen_name)
contact3 = Contact.create(firstName: Faker::Name.first_name, lastName: Faker::Name.last_name,twitterUsername: Faker::Twitter.screen_name)
contact4 = Contact.create(firstName: Faker::Name.first_name, lastName: Faker::Name.last_name,twitterUsername: Faker::Twitter.screen_name)
contact5 = Contact.create(firstName: Faker::Name.first_name, lastName: Faker::Name.last_name,twitterUsername: Faker::Twitter.screen_name)


email1 = ContactEmail.create(contact_id: contact1.id, email: Faker::Internet.email)
phoneNumber1 = ContactPhoneNumber.create(contact_id: contact1.id, phoneNumber: Faker::PhoneNumber.cell_phone_in_e164)
email2 = ContactEmail.create(contact_id: contact2.id, email: Faker::Internet.email)
phoneNumber2 = ContactPhoneNumber.create(contact_id: contact2.id, phoneNumber: Faker::PhoneNumber.cell_phone_in_e164)
email3 = ContactEmail.create(contact_id: contact3.id, email: Faker::Internet.email)
phoneNumber3 = ContactPhoneNumber.create(contact_id: contact3.id, phoneNumber: Faker::PhoneNumber.cell_phone_in_e164)
email4 = ContactEmail.create(contact_id: contact4.id, email: Faker::Internet.email)
phoneNumber4 = ContactPhoneNumber.create(contact_id: contact4.id, phoneNumber: Faker::PhoneNumber.cell_phone_in_e164)
email5 = ContactEmail.create(contact_id: contact5.id, email: Faker::Internet.email)
phoneNumber5 = ContactPhoneNumber.create(contact_id: contact5.id, phoneNumber: Faker::PhoneNumber.cell_phone_in_e164)
email6 = ContactEmail.create(contact_id: contact1.id, email: Faker::Internet.email)
phoneNumber6 = ContactPhoneNumber.create(contact_id: contact1.id, phoneNumber: Faker::PhoneNumber.cell_phone_in_e164)
email7 = ContactEmail.create(contact_id: contact2.id, email: Faker::Internet.email)
phoneNumber7 = ContactPhoneNumber.create(contact_id: contact2.id, phoneNumber: Faker::PhoneNumber.cell_phone_in_e164)
email8 = ContactEmail.create(contact_id: contact3.id, email: Faker::Internet.email)
phoneNumber8 = ContactPhoneNumber.create(contact_id: contact3.id, phoneNumber: Faker::PhoneNumber.cell_phone_in_e164)
email9 = ContactEmail.create(contact_id: contact4.id, email: Faker::Internet.email)
phoneNumber9 = ContactPhoneNumber.create(contact_id: contact4.id, phoneNumber: Faker::PhoneNumber.cell_phone_in_e164)
email10 = ContactEmail.create(contact_id: contact5.id, email: Faker::Internet.email)
phoneNumber10 = ContactPhoneNumber.create(contact_id: contact5.id, phoneNumber: Faker::PhoneNumber.cell_phone_in_e164)