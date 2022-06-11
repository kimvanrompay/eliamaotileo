class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :bedrijfsnaam
      t.string :contactnaam
      t.string :email
      t.string :tel
      t.text :onderwerp

      t.timestamps
    end
  end
end
