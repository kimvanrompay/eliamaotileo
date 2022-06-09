class CreateAankoopfacturens < ActiveRecord::Migration[7.0]
  def change
    create_table :aankoopfacturens do |t|
      t.string :bedrijfsnaam
      t.string :adres
      t.string :land
      t.string :postcode
      t.string :btw
      t.string :klantnummer
      t.string :factuurnummer
      t.text :description
      t.integer :excl_bedrag
      t.date :factuurdatum
      t.date :vervaldatum
      t.string :rekeningnummer
      t.string :begunstigde
      t.string :mededeling
      t.string :factuur_mail
      t.boolean :betaald
      t.boolean :bevestigd
      t.boolean :recurrent
      t.text :opmerking
      t.text :staving

      t.timestamps
    end
  end
end
