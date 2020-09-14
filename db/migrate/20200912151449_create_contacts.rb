class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :firstName
      t.string :lastName
      t.string :twitterUsername

      t.timestamps
    end
  end
end
