module Types
  class ContactType < Types::BaseObject
    field :id, ID, null: false
    field :firstName, String, null: true
    field :lastName, String, null: true
    field :contactEmails, [Types::ContactEmailType], null: false
    field :contactPhoneNumbers, [Types::ContactPhoneNumberType], null: false
    field :twitterUsername, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
