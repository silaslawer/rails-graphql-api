module Types
  class QueryType < Types::BaseObject
    field :contacts, [Types::ContactType], null: false
    def contacts
        Contact.all
    end

    field :contact, Types::ContactType, null: false do
      argument :id, ID, required: true
    end
    def contact(id:)
        Contact.find(id)
    end
  end
end
