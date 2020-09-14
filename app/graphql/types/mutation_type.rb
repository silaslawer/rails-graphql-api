module Types
  class MutationType < Types::BaseObject
    field :create_contact, mutation: Mutations::CreateContact
    field :remove_contact, mutation: Mutations::RemoveContact
    field :update_contact, mutation: Mutations::UpdateContact
  end
end
