class Mutations::RemoveContact < Mutations::BaseMutation

    argument :id, ID, required: true

    type Types::ContactType
    def resolve(id:)
      contact_list = Contact.find_by(id: id)

      return unless contact_list
      contact_list.destroy
    end
  end
