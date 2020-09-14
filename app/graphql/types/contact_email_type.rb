module Types
  class ContactEmailType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: true
    field :contact_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
