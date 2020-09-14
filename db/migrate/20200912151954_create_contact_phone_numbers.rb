class CreateContactPhoneNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_phone_numbers do |t|
      t.string :phoneNumber
      t.integer :contact_id

      t.timestamps
    end
  end
end
