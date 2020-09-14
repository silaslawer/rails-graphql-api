class CreateContactEmails < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_emails do |t|
      t.string :email
      t.integer :contact_id

      t.timestamps
    end
  end
end
