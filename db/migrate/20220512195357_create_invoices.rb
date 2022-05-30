class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.string :fnummer
      t.date :datum
      t.string :bedrijfsnaam
      t.string :adres1
      t.string :adres2
      t.string :postcode
      t.string :stad
      t.string :email
      t.text :beschrijving
      t.decimal :bedragexcl
      t.decimal :btw
      t.decimal :bedragincl
      t.text :opmerkingen
      t.string :barcode

      t.timestamps
    end
  end
end
